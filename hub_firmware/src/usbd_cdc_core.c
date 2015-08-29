/**
  ******************************************************************************
  * @file    usbd_cdc_core.c
  * @author  MCD Application Team
  * @version V1.0.1
  * @date    31-January-2014
  * @brief   This file provides the high layer firmware functions to manage the 
  *          following functionalities of the USB CDC Class:
  *           - Initialization and Configuration of high and low layer
  *           - Enumeration as CDC Device (and enumeration for each implemented memory interface)
  *           - OUT/IN data transfer
  *           - Command IN transfer (class requests management)
  *           - Error management
  *           
  *  @verbatim
  *      
  *          ===================================================================      
  *                                CDC Class Driver Description
  *          =================================================================== 
  *           This driver manages the "Universal Serial Bus Class Definitions for Communications Devices
  *           Revision 1.2 November 16, 2007" and the sub-protocol specification of "Universal Serial Bus 
  *           Communications Class Subclass Specification for PSTN Devices Revision 1.2 February 9, 2007"
  *           This driver implements the following aspects of the specification:
  *             - Device descriptor management
  *             - Configuration descriptor management
  *             - Enumeration as CDC device with 2 data endpoints (IN and OUT) and 1 command endpoint (IN)
  *             - Requests management (as described in section 6.2 in specification)
  *             - Abstract Control Model compliant
  *             - Union Functional collection (using 1 IN endpoint for control)
  *             - Data interface class
  *           @note
  *             For the Abstract Control Model, this core allows only transmitting the requests to
  *             lower layer dispatcher (ie. usbd_cdc_vcp.c/.h) which should manage each request and
  *             perform relative actions.
  * 
  *           These aspects may be enriched or modified for a specific user application.
  *          
  *            This driver doesn't implement the following aspects of the specification 
  *            (but it is possible to manage these features with some modifications on this driver):
  *             - Any class-specific aspect relative to communication classes should be managed by user application.
  *             - All communication classes other than PSTN are not managed
  *      
  *  @endverbatim
  *                                  
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "usbd_cdc_core.h"
#include "hal.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/ 

/*********************************************
   CDC Device library callbacks
 *********************************************/
uint8_t  usbd_cdc_Init        (void  *pdev, uint8_t cfgidx);
uint8_t  usbd_cdc_DeInit      (void  *pdev, uint8_t cfgidx);
uint8_t  usbd_cdc_Setup       (void  *pdev, USB_SETUP_REQ *req);
uint8_t  usbd_cdc_EP0_RxReady  (void *pdev);
uint8_t  usbd_cdc_DataIn      (void *pdev, uint8_t epnum);
uint8_t  usbd_cdc_DataOut     (void *pdev, uint8_t epnum);
uint8_t  usbd_cdc_SOF         (void *pdev);

/*********************************************
   CDC specific management functions
 *********************************************/
static uint8_t  *USBD_cdc_GetCfgDesc (uint8_t speed, uint16_t *length);

extern uint8_t USBD_DeviceDesc   [USB_SIZ_DEVICE_DESC];

uint8_t usbd_cdc_OtherCfgDesc  [USB_CDC_CONFIG_DESC_SIZ] ;

static __IO uint32_t  usbd_cdc_AltSet  = 0;

uint8_t USB_Rx_Buffer   [CDC_DATA_MAX_PACKET_SIZE] ;
uint16_t USB_Rx_Cnt = 0;
uint8_t done_flushing = 1;
uint8_t need_zlp = 0;

uint8_t USB_Tx_Buffer   [CDC_DATA_MAX_PACKET_SIZE] ;

uint8_t CmdBuff[CDC_CMD_PACKET_SZE] ;
__IO uint32_t last_packet = 0;

uint8_t  USB_Tx_State = 0;

static uint32_t cdcCmd = 0xFF;
static uint32_t cdcLen = 0;

/* CDC interface class callbacks structure */
USBD_Class_cb_TypeDef  USBD_CDC_cb = 
{
  usbd_cdc_Init,
  usbd_cdc_DeInit,
  usbd_cdc_Setup,
  NULL,                 /* EP0_TxSent, */
  usbd_cdc_EP0_RxReady,
  usbd_cdc_DataIn,
  usbd_cdc_DataOut,
  usbd_cdc_SOF,    
  USBD_cdc_GetCfgDesc,
};

/* USB CDC device Configuration Descriptor */
const uint8_t usbd_cdc_CfgDesc[USB_CDC_CONFIG_DESC_SIZ] =
{
  /*Configuration Descriptor*/
  0x09,   /* bLength: Configuration Descriptor size */
  USB_CONFIGURATION_DESCRIPTOR_TYPE,      /* bDescriptorType: Configuration */
  USB_CDC_CONFIG_DESC_SIZ,                /* wTotalLength:no of returned bytes */
  0x00,
  0x02,   /* bNumInterfaces: 2 interface */
  0x01,   /* bConfigurationValue: Configuration value */
  0x00,   /* iConfiguration: Index of string descriptor describing the configuration */
  0xC0,   /* bmAttributes: self powered */
  0x32,   /* MaxPower 0 mA */
  
  /*---------------------------------------------------------------------------*/
  
  /*Interface Descriptor */
  0x09,   /* bLength: Interface Descriptor size */
  USB_INTERFACE_DESCRIPTOR_TYPE,  /* bDescriptorType: Interface */
  /* Interface descriptor type */
  0x00,   /* bInterfaceNumber: Number of Interface */
  0x00,   /* bAlternateSetting: Alternate setting */
  0x01,   /* bNumEndpoints: One endpoints used */
  0x02,   /* bInterfaceClass: Communication Interface Class */
  0x02,   /* bInterfaceSubClass: Abstract Control Model */
  0x01,   /* bInterfaceProtocol: Common AT commands */
  0x00,   /* iInterface: */
  
  /*Header Functional Descriptor*/
  0x05,   /* bLength: Endpoint Descriptor size */
  0x24,   /* bDescriptorType: CS_INTERFACE */
  0x00,   /* bDescriptorSubtype: Header Func Desc */
  0x10,   /* bcdCDC: spec release number */
  0x01,
  
  /*Call Management Functional Descriptor*/
  0x05,   /* bFunctionLength */
  0x24,   /* bDescriptorType: CS_INTERFACE */
  0x01,   /* bDescriptorSubtype: Call Management Func Desc */
  0x00,   /* bmCapabilities: D0+D1 */
  0x01,   /* bDataInterface: 1 */
  
  /*ACM Functional Descriptor*/
  0x04,   /* bFunctionLength */
  0x24,   /* bDescriptorType: CS_INTERFACE */
  0x02,   /* bDescriptorSubtype: Abstract Control Management desc */
  0x02,   /* bmCapabilities */
  
  /*Union Functional Descriptor*/
  0x05,   /* bFunctionLength */
  0x24,   /* bDescriptorType: CS_INTERFACE */
  0x06,   /* bDescriptorSubtype: Union func desc */
  0x00,   /* bMasterInterface: Communication class interface */
  0x01,   /* bSlaveInterface0: Data Class Interface */
  
  /*Endpoint 2 Descriptor*/
  0x07,                           /* bLength: Endpoint Descriptor size */
  USB_ENDPOINT_DESCRIPTOR_TYPE,   /* bDescriptorType: Endpoint */
  CDC_CMD_EP,                     /* bEndpointAddress */
  0x03,                           /* bmAttributes: Interrupt */
  LOBYTE(CDC_CMD_PACKET_SZE),     /* wMaxPacketSize: */
  HIBYTE(CDC_CMD_PACKET_SZE),
  0xFF,                           /* bInterval: */
  
  /*---------------------------------------------------------------------------*/
  
  /*Data class interface descriptor*/
  0x09,   /* bLength: Endpoint Descriptor size */
  USB_INTERFACE_DESCRIPTOR_TYPE,  /* bDescriptorType: */
  0x01,   /* bInterfaceNumber: Number of Interface */
  0x00,   /* bAlternateSetting: Alternate setting */
  0x02,   /* bNumEndpoints: Two endpoints used */
  0x0A,   /* bInterfaceClass: CDC */
  0x00,   /* bInterfaceSubClass: */
  0x00,   /* bInterfaceProtocol: */
  0x00,   /* iInterface: */
  
  /*Endpoint OUT Descriptor*/
  0x07,   /* bLength: Endpoint Descriptor size */
  USB_ENDPOINT_DESCRIPTOR_TYPE,      /* bDescriptorType: Endpoint */
  CDC_OUT_EP,                        /* bEndpointAddress */
  0x02,                              /* bmAttributes: Bulk */
  LOBYTE(CDC_DATA_MAX_PACKET_SIZE),  /* wMaxPacketSize: */
  HIBYTE(CDC_DATA_MAX_PACKET_SIZE),
  0x00,                              /* bInterval: ignore for Bulk transfer */
  
  /*Endpoint IN Descriptor*/
  0x07,   /* bLength: Endpoint Descriptor size */
  USB_ENDPOINT_DESCRIPTOR_TYPE,      /* bDescriptorType: Endpoint */
  CDC_IN_EP,                         /* bEndpointAddress */
  0x02,                              /* bmAttributes: Bulk */
  LOBYTE(CDC_DATA_MAX_PACKET_SIZE),  /* wMaxPacketSize: */
  HIBYTE(CDC_DATA_MAX_PACKET_SIZE),
  0x00                               /* bInterval: ignore for Bulk transfer */
} ;

/* Private function ----------------------------------------------------------*/ 

static void try_send(void* pdev)
{
    if(USB_Rx_Cnt && bytes_to_write() > USB_Rx_Cnt)
    {
        write_bytes(USB_Rx_Buffer, USB_Rx_Cnt);
        USB_Rx_Cnt = 0;
        DCD_EP_PrepareRx(pdev,
                         CDC_OUT_EP,
                         (uint8_t*)(USB_Rx_Buffer),
                         CDC_DATA_MAX_PACKET_SIZE);
    }
}

/**
  * @brief  usbd_cdc_Init
  *         Initialize the CDC interface
  * @param  pdev: device instance
  * @param  cfgidx: Configuration index
  * @retval status
  */
uint8_t  usbd_cdc_Init (void  *pdev, 
                               uint8_t cfgidx)
{
  DCD_PMA_Config(pdev , CDC_IN_EP,USB_SNG_BUF,BULK_IN_TX_ADDRESS);
  DCD_PMA_Config(pdev , CDC_CMD_EP,USB_SNG_BUF,INT_IN_TX_ADDRESS);
  DCD_PMA_Config(pdev , CDC_OUT_EP,USB_SNG_BUF,BULK_OUT_RX_ADDRESS);

  /* Open EP IN */
  DCD_EP_Open(pdev,
              CDC_IN_EP,
              CDC_DATA_MAX_PACKET_SIZE,
              USB_EP_BULK);
  
  /* Open EP OUT */
  DCD_EP_Open(pdev,
              CDC_OUT_EP,
              CDC_DATA_MAX_PACKET_SIZE,
              USB_EP_BULK);
  
  /* Open Command IN EP */
  DCD_EP_Open(pdev,
              CDC_CMD_EP,
              CDC_CMD_PACKET_SZE,
              USB_EP_INT);

  /* Prepare Out endpoint to receive next packet */
  DCD_EP_PrepareRx(pdev,
                   CDC_OUT_EP,
                   (uint8_t*)(USB_Rx_Buffer),
                   CDC_DATA_MAX_PACKET_SIZE);

  return USBD_OK;
}

/**
  * @brief  usbd_cdc_Init
  *         DeInitialize the CDC layer
  * @param  pdev: device instance
  * @param  cfgidx: Configuration index
  * @retval status
  */
uint8_t  usbd_cdc_DeInit (void  *pdev, 
                                 uint8_t cfgidx)
{
  /* Open EP IN */
  DCD_EP_Close(pdev,
              CDC_IN_EP);
  
  /* Open EP OUT */
  DCD_EP_Close(pdev,
              CDC_OUT_EP);
  
  /* Open Command IN EP */
  DCD_EP_Close(pdev,
              CDC_CMD_EP);

  return USBD_OK;
}

/**
  * @brief  usbd_cdc_Setup
  *         Handle the CDC specific requests
  * @param  pdev: instance
  * @param  req: usb requests
  * @retval status
  */
uint8_t  usbd_cdc_Setup (void  *pdev, 
                                USB_SETUP_REQ *req)
{
  uint16_t len=USB_CDC_DESC_SIZ;
  uint8_t  *pbuf= (uint8_t*)usbd_cdc_CfgDesc + 9;
  
  switch (req->bmRequest & USB_REQ_TYPE_MASK)
  {
    /* CDC Class Requests -------------------------------*/
  case USB_REQ_TYPE_CLASS :
      /* Check if the request is a data setup packet */
      if (req->wLength)
      {
        /* Check if the request is Device-to-Host */
        if (req->bmRequest & 0x80)
        {
          // Do not handle any control requests
          USBD_CtlSendData (pdev, 
                            NULL,
                            0);          
        }
        else /* Host-to-Device request */
        {
          /* Set the value of the current command to be processed */
          cdcCmd = req->bRequest;
          cdcLen = req->wLength;
          
          /* Prepare the reception of the buffer over EP0
          Next step: the received data will be managed in usbd_cdc_EP0_TxSent() 
          function. */
          USBD_CtlPrepareRx (pdev,
                             CmdBuff,
                             req->wLength);          
        }
      }
      else /* No Data request */
      {
        // Don't handle no-data control packets
      }
      
      return USBD_OK;
      
    default:
      USBD_CtlError (pdev, req);
      return USBD_FAIL;
  
  
    /* Standard Requests -------------------------------*/
  case USB_REQ_TYPE_STANDARD:
    switch (req->bRequest)
    {
    case USB_REQ_GET_DESCRIPTOR: 
      if( (req->wValue >> 8) == CDC_DESCRIPTOR_TYPE)
      {
        pbuf = (uint8_t*)usbd_cdc_CfgDesc + 9 + (9 * USBD_ITF_MAX_NUM);
        len = MIN(USB_CDC_DESC_SIZ , req->wLength);
      }
      
      USBD_CtlSendData (pdev, 
                        pbuf,
                        len);
      break;
      
    case USB_REQ_GET_INTERFACE :
      USBD_CtlSendData (pdev,
                        (uint8_t *)&usbd_cdc_AltSet,
                        1);
      break;
      
    case USB_REQ_SET_INTERFACE :
      if ((uint8_t)(req->wValue) < USBD_ITF_MAX_NUM)
      {
        usbd_cdc_AltSet = (uint8_t)(req->wValue);
      }
      else
      {
        /* Call the error management function (command will be nacked */
        USBD_CtlError (pdev, req);
      }
      break;
    }
  }
  return USBD_OK;
}

/**
  * @brief  usbd_cdc_EP0_RxReady
  *         Data received on control endpoint
  * @param  pdev: device device instance
  * @retval status
  */
uint8_t  usbd_cdc_EP0_RxReady (void  *pdev)
{ 
  if (cdcCmd != NO_CMD)
  {
    // Do not process any control transfers
    
    /* Reset the command variable to default value */
    cdcCmd = NO_CMD;
  }
  
  return USBD_OK;
}

/**
  * @brief  usbd_audio_DataIn
  *         Data sent on non-control IN endpoint
  * @param  pdev: device instance
  * @param  epnum: endpoint number
  * @retval status
  */
uint8_t  usbd_cdc_DataIn (void *pdev, uint8_t epnum)
{
  //DCD_EP_Tx (pdev,
  //           CDC_IN_EP,
  //           (uint8_t*)&APP_Rx_Buffer[USB_Tx_ptr],
  //           USB_Tx_length);

  // If 64 bytes available for read, send them out
  // Else if TC and not flag, send out any bytes and set flag

  uint16_t USB_Tx_Ptr;

  uint16_t bytes_available = bytes_to_read();

  if(bytes_available >= CDC_DATA_MAX_PACKET_SIZE)
  {
    for(USB_Tx_Ptr = 0; USB_Tx_Ptr < CDC_DATA_MAX_PACKET_SIZE; USB_Tx_Ptr++)
    {
      USB_Tx_Buffer[USB_Tx_Ptr++] = read_byte();
    }
    need_zlp = 1;
    DCD_EP_Tx (pdev,
               CDC_IN_EP,
               USB_Tx_Buffer,
               CDC_DATA_MAX_PACKET_SIZE);
  }
  else if(rx_idle() && (bytes_available || need_zlp))
  {
    for(USB_Tx_Ptr = 0; USB_Tx_Ptr < bytes_available; USB_Tx_Ptr++)
    {
      USB_Tx_Buffer[USB_Tx_Ptr++] = read_byte();
    }
    need_zlp = 0;
    DCD_EP_Tx (pdev,
               CDC_IN_EP,
               USB_Tx_Buffer,
               CDC_DATA_MAX_PACKET_SIZE);
  }

  return USBD_OK;
}

/**
  * @brief  usbd_cdc_DataOut
  *         Data received on non-control Out endpoint
  * @param  pdev: device instance
  * @param  epnum: endpoint number
  * @retval status
  */
uint8_t  usbd_cdc_DataOut (void *pdev, uint8_t epnum)
{ 
  /* Get the received data buffer and update the counter */
  USB_Rx_Cnt = ((USB_CORE_HANDLE*)pdev)->dev.out_ep[epnum].xfer_count;

  try_send(pdev);

  return USBD_OK;
}

/**
  * @brief  usbd_CDC_SOF
  *         Start Of Frame event management
  * @param  pdev: instance
  * @param  epnum: endpoint number
  * @retval status
  */
uint8_t  usbd_cdc_SOF (void *pdev)
{      
  static uint32_t FrameCount = 0;
  
  if (FrameCount++ == CDC_IN_FRAME_INTERVAL)
  {
    /* Reset the frame counter */
    FrameCount = 0;
  }

  try_send(pdev);
  
  return USBD_OK;
}

/**
  * @brief  USBD_cdc_GetCfgDesc 
  *         Return configuration descriptor
  * @param  speed : current device speed
  * @param  length : pointer data length
  * @retval pointer to descriptor buffer
  */
static uint8_t  *USBD_cdc_GetCfgDesc (uint8_t speed, uint16_t *length)
{
  *length = sizeof (usbd_cdc_CfgDesc);
  return (uint8_t*)usbd_cdc_CfgDesc;
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
