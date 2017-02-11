EESchema Schematic File Version 2
LIBS:lux hub-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lux hub-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date "3 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F042-32 U2
U 1 1 556BB9ED
P 5700 3600
F 0 "U2" H 5700 3500 50  0000 C CNN
F 1 "STM32F042-32" H 5700 3700 50  0000 C CNN
F 2 "LQFP32" H 5700 3600 50  0001 C CNN
F 3 "DOCUMENTATION" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR01
U 1 1 556BBA03
P 4650 3250
F 0 "#PWR01" H 4650 3350 30  0001 C CNN
F 1 "VDD" H 4650 3360 30  0000 C CNN
F 2 "" H 4650 3250 60  0000 C CNN
F 3 "" H 4650 3250 60  0000 C CNN
	1    4650 3250
	0    -1   -1   0   
$EndComp
NoConn ~ 4650 3550
$Comp
L VDD #PWR02
U 1 1 556BBA12
P 4650 3650
F 0 "#PWR02" H 4650 3750 30  0001 C CNN
F 1 "VDD" H 4650 3760 30  0000 C CNN
F 2 "" H 4650 3650 60  0000 C CNN
F 3 "" H 4650 3650 60  0000 C CNN
	1    4650 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR03
U 1 1 556BBA21
P 6050 4650
F 0 "#PWR03" H 6050 4650 30  0001 C CNN
F 1 "GND" H 6050 4580 30  0001 C CNN
F 2 "" H 6050 4650 60  0000 C CNN
F 3 "" H 6050 4650 60  0000 C CNN
	1    6050 4650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR04
U 1 1 556BBA30
P 5350 2550
F 0 "#PWR04" H 5350 2550 30  0001 C CNN
F 1 "GND" H 5350 2480 30  0001 C CNN
F 2 "" H 5350 2550 60  0000 C CNN
F 3 "" H 5350 2550 60  0000 C CNN
	1    5350 2550
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR05
U 1 1 556BBA3F
P 6750 3950
F 0 "#PWR05" H 6750 4050 30  0001 C CNN
F 1 "VDD" H 6750 4060 30  0000 C CNN
F 2 "" H 6750 3950 60  0000 C CNN
F 3 "" H 6750 3950 60  0000 C CNN
	1    6750 3950
	0    1    1    0   
$EndComp
$Comp
L USB-MINI-B CON2
U 1 1 556BBAAF
P 1850 3550
F 0 "CON2" H 1600 4000 60  0000 C CNN
F 1 "USB-MINI-B" H 1800 3050 60  0000 C CNN
F 2 "USB_MINI_B" H 1800 2950 60  0000 C CNN
F 3 "" H 1850 3550 60  0000 C CNN
	1    1850 3550
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-lux_hub R3
U 1 1 556BBAEA
P 4900 2400
F 0 "R3" V 4980 2400 40  0000 C CNN
F 1 "10K" V 4907 2401 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 2400 30  0000 C CNN
F 3 "" H 4900 2400 30  0000 C CNN
	1    4900 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 1750 5450 2150
Wire Wire Line
	5450 2150 5450 2550
$Comp
L VDD #PWR06
U 1 1 556BBB19
P 4900 1400
F 0 "#PWR06" H 4900 1500 30  0001 C CNN
F 1 "VDD" H 4900 1510 30  0000 C CNN
F 2 "" H 4900 1400 60  0000 C CNN
F 3 "" H 4900 1400 60  0000 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3550 7250 3550
Wire Wire Line
	6750 3450 7250 3450
Text Label 7250 3550 2    60   ~ 0
USB_DM
Text Label 7250 3450 2    60   ~ 0
USB_DP
Wire Wire Line
	2400 3550 2900 3550
Wire Wire Line
	2400 3400 2900 3400
Text Label 2450 3400 0    60   ~ 0
USB_DM
Text Label 2450 3550 0    60   ~ 0
USB_DP
NoConn ~ 2400 3700
$Comp
L GND-RESCUE-lux_hub #PWR07
U 1 1 556BBBBC
P 2400 3850
F 0 "#PWR07" H 2400 3850 30  0001 C CNN
F 1 "GND" H 2400 3780 30  0001 C CNN
F 2 "" H 2400 3850 60  0000 C CNN
F 3 "" H 2400 3850 60  0000 C CNN
	1    2400 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR08
U 1 1 556BBC3E
P 1300 3950
F 0 "#PWR08" H 1300 3950 30  0001 C CNN
F 1 "GND" H 1300 3880 30  0001 C CNN
F 2 "" H 1300 3950 60  0000 C CNN
F 3 "" H 1300 3950 60  0000 C CNN
	1    1300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3250 1300 3400
Wire Wire Line
	1300 3400 1300 3700
Wire Wire Line
	1300 3700 1300 3850
Wire Wire Line
	1300 3850 1300 3950
Connection ~ 1300 3400
Connection ~ 1300 3700
Connection ~ 1300 3850
$Comp
L SOT223-REG U1
U 1 1 556BBD39
P 3500 3300
F 0 "U1" H 3650 3104 60  0000 C CNN
F 1 "3V3REG" H 3500 3500 60  0000 C CNN
F 2 "SOT223" H 3500 3600 60  0000 C CNN
F 3 "" H 3500 3300 60  0000 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3250 3100 3250
$Comp
L GND-RESCUE-lux_hub #PWR09
U 1 1 556BBD66
P 3450 3550
F 0 "#PWR09" H 3450 3550 30  0001 C CNN
F 1 "GND" H 3450 3480 30  0001 C CNN
F 2 "" H 3450 3550 60  0000 C CNN
F 3 "" H 3450 3550 60  0000 C CNN
	1    3450 3550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR010
U 1 1 556BBD75
P 3550 3550
F 0 "#PWR010" H 3550 3550 30  0001 C CNN
F 1 "GND" H 3550 3480 30  0001 C CNN
F 2 "" H 3550 3550 60  0000 C CNN
F 3 "" H 3550 3550 60  0000 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR011
U 1 1 556BBD84
P 3900 3250
F 0 "#PWR011" H 3900 3350 30  0001 C CNN
F 1 "VDD" H 3900 3360 30  0000 C CNN
F 2 "" H 3900 3250 60  0000 C CNN
F 3 "" H 3900 3250 60  0000 C CNN
	1    3900 3250
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-lux_hub C2
U 1 1 556BBD93
P 3100 3450
F 0 "C2" H 3100 3550 40  0000 L CNN
F 1 "1u" H 3106 3365 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3100 3300 30  0000 C CNN
F 3 "" H 3100 3450 60  0000 C CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR012
U 1 1 556BBDA2
P 3100 3650
F 0 "#PWR012" H 3100 3650 30  0001 C CNN
F 1 "GND" H 3100 3580 30  0001 C CNN
F 2 "" H 3100 3650 60  0000 C CNN
F 3 "" H 3100 3650 60  0000 C CNN
	1    3100 3650
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-lux_hub C4
U 1 1 556BBDAF
P 3900 3450
F 0 "C4" H 3900 3550 40  0000 L CNN
F 1 "2u2" H 3906 3365 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3900 3300 30  0000 C CNN
F 3 "" H 3900 3450 60  0000 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR013
U 1 1 556BBDB7
P 3900 3650
F 0 "#PWR013" H 3900 3650 30  0001 C CNN
F 1 "GND" H 3900 3580 30  0001 C CNN
F 2 "" H 3900 3650 60  0000 C CNN
F 3 "" H 3900 3650 60  0000 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
Connection ~ 3100 3250
Connection ~ 3900 3250
$Comp
L C-RESCUE-lux_hub C5
U 1 1 556BBE7D
P 6650 4550
F 0 "C5" H 6650 4650 40  0000 L CNN
F 1 "100n" H 6656 4465 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6600 4250 30  0000 C CNN
F 3 "" H 6650 4550 60  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR014
U 1 1 556BBE8C
P 6650 4750
F 0 "#PWR014" H 6650 4750 30  0001 C CNN
F 1 "GND" H 6650 4680 30  0001 C CNN
F 2 "" H 6650 4750 60  0000 C CNN
F 3 "" H 6650 4750 60  0000 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR015
U 1 1 556BBEAA
P 6650 4350
F 0 "#PWR015" H 6650 4450 30  0001 C CNN
F 1 "VDD" H 6650 4460 30  0000 C CNN
F 2 "" H 6650 4350 60  0000 C CNN
F 3 "" H 6650 4350 60  0000 C CNN
	1    6650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3350 7250 3350
Text Label 7250 3350 2    60   ~ 0
SWDIO
Wire Wire Line
	6750 3250 7250 3250
Text Label 7250 3250 2    60   ~ 0
SWCLK
Wire Wire Line
	6750 3750 7250 3750
Wire Wire Line
	6750 3850 7250 3850
Text Label 7250 3750 2    60   ~ 0
TX
Text Label 7250 3850 2    60   ~ 0
TX_LED
$Comp
L GND-RESCUE-lux_hub #PWR016
U 1 1 556BC371
P 4900 2650
F 0 "#PWR016" H 4900 2650 30  0001 C CNN
F 1 "GND" H 4900 2580 30  0001 C CNN
F 2 "" H 4900 2650 60  0000 C CNN
F 3 "" H 4900 2650 60  0000 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2150 5450 2150
Connection ~ 4900 2150
$Sheet
S 9550 1150 650  600 
U 556BBF52
F0 "Port1" 50
F1 "port.sch" 50
F2 "LED" I L 9550 1250 60 
F3 "RX" I L 9550 1350 60 
F4 "TX" I L 9550 1450 60 
F5 "~RE" I L 9550 1550 60 
F6 "DE" I L 9550 1650 60 
$EndSheet
$Comp
L 4068 U3
U 1 1 556BC5C5
P 7850 1800
F 0 "U3" H 7850 1900 60  0000 C CNN
F 1 "4068" H 7850 1700 60  0000 C CNN
F 2 "SO14E" H 7850 1800 60  0000 C CNN
F 3 "" H 7850 1800 60  0000 C CNN
	1    7850 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 1650 7050 1650
Text Label 7100 1650 0    60   ~ 0
sRX
NoConn ~ 7250 1800
$Comp
L GND-RESCUE-lux_hub #PWR017
U 1 1 556BC5CE
P 8050 2000
F 0 "#PWR017" H 8050 2000 30  0001 C CNN
F 1 "GND" H 8050 1930 30  0001 C CNN
F 2 "" H 8050 2000 60  0000 C CNN
F 3 "" H 8050 2000 60  0000 C CNN
	1    8050 2000
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-lux_hub C6
U 1 1 556BC5DA
P 7550 1300
F 0 "C6" H 7550 1400 40  0000 L CNN
F 1 "100n" H 7556 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7650 1150 30  0000 C CNN
F 3 "" H 7550 1300 60  0000 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR018
U 1 1 556BC5E0
P 7550 1500
F 0 "#PWR018" H 7550 1500 30  0001 C CNN
F 1 "GND" H 7550 1430 30  0001 C CNN
F 2 "" H 7550 1500 60  0000 C CNN
F 3 "" H 7550 1500 60  0000 C CNN
	1    7550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1250 9100 1250
Text Label 9200 1250 0    60   ~ 0
LED1
Wire Wire Line
	9550 1550 9100 1550
Text Label 9200 1550 0    60   ~ 0
RE1
Wire Wire Line
	9550 1650 9100 1650
Text Label 9200 1650 0    60   ~ 0
DE1
Wire Wire Line
	8450 1450 8700 1450
Text Label 8700 1650 2    60   ~ 0
RX2
Wire Wire Line
	9550 1350 9250 1350
Text Label 9300 1350 0    60   ~ 0
RX1
Wire Wire Line
	9550 1450 9250 1450
Text Label 9300 1450 0    60   ~ 0
TX
$Sheet
S 9550 1900 650  600 
U 556BDBDE
F0 "Port2" 50
F1 "port.sch" 50
F2 "LED" I L 9550 2000 60 
F3 "RX" I L 9550 2100 60 
F4 "TX" I L 9550 2200 60 
F5 "~RE" I L 9550 2300 60 
F6 "DE" I L 9550 2400 60 
$EndSheet
Wire Wire Line
	9550 2000 9100 2000
Text Label 9200 2000 0    60   ~ 0
LED2
Wire Wire Line
	9550 2300 9100 2300
Text Label 9200 2300 0    60   ~ 0
RE2
Wire Wire Line
	9550 2400 9100 2400
Text Label 9200 2400 0    60   ~ 0
DE2
Wire Wire Line
	9550 2100 9250 2100
Text Label 9300 2100 0    60   ~ 0
RX2
Wire Wire Line
	9550 2200 9250 2200
Text Label 9300 2200 0    60   ~ 0
TX
$Sheet
S 9550 2650 650  600 
U 556BE135
F0 "Port3" 50
F1 "port.sch" 50
F2 "LED" I L 9550 2750 60 
F3 "RX" I L 9550 2850 60 
F4 "TX" I L 9550 2950 60 
F5 "~RE" I L 9550 3050 60 
F6 "DE" I L 9550 3150 60 
$EndSheet
Wire Wire Line
	9550 2750 9100 2750
Text Label 9200 2750 0    60   ~ 0
LED3
Wire Wire Line
	9550 3050 9100 3050
Text Label 9200 3050 0    60   ~ 0
RE3
Wire Wire Line
	9550 3150 9100 3150
Text Label 9200 3150 0    60   ~ 0
DE3
Wire Wire Line
	9550 2850 9250 2850
Text Label 9300 2850 0    60   ~ 0
RX3
Wire Wire Line
	9550 2950 9250 2950
Text Label 9300 2950 0    60   ~ 0
TX
$Sheet
S 9550 3400 650  600 
U 556BE146
F0 "Port4" 50
F1 "port.sch" 50
F2 "LED" I L 9550 3500 60 
F3 "RX" I L 9550 3600 60 
F4 "TX" I L 9550 3700 60 
F5 "~RE" I L 9550 3800 60 
F6 "DE" I L 9550 3900 60 
$EndSheet
Wire Wire Line
	9550 3500 9100 3500
Text Label 9200 3500 0    60   ~ 0
LED4
Wire Wire Line
	9550 3800 9100 3800
Text Label 9200 3800 0    60   ~ 0
RE4
Wire Wire Line
	9550 3900 9100 3900
Text Label 9200 3900 0    60   ~ 0
DE4
Wire Wire Line
	9550 3600 9250 3600
Text Label 9300 3600 0    60   ~ 0
RX4
Wire Wire Line
	9550 3700 9250 3700
Text Label 9300 3700 0    60   ~ 0
TX
$Sheet
S 9550 4150 650  600 
U 556BE805
F0 "Port5" 50
F1 "port.sch" 50
F2 "LED" I L 9550 4250 60 
F3 "RX" I L 9550 4350 60 
F4 "TX" I L 9550 4450 60 
F5 "~RE" I L 9550 4550 60 
F6 "DE" I L 9550 4650 60 
$EndSheet
Wire Wire Line
	9550 4250 9100 4250
Text Label 9200 4250 0    60   ~ 0
LED5
Wire Wire Line
	9550 4550 9100 4550
Text Label 9200 4550 0    60   ~ 0
RE5
Wire Wire Line
	9550 4650 9100 4650
Text Label 9200 4650 0    60   ~ 0
DE5
Wire Wire Line
	9550 4350 9250 4350
Text Label 9300 4350 0    60   ~ 0
RX5
Wire Wire Line
	9550 4450 9250 4450
Text Label 9300 4450 0    60   ~ 0
TX
$Sheet
S 9550 4900 650  600 
U 556BE816
F0 "Port6" 50
F1 "port.sch" 50
F2 "LED" I L 9550 5000 60 
F3 "RX" I L 9550 5100 60 
F4 "TX" I L 9550 5200 60 
F5 "~RE" I L 9550 5300 60 
F6 "DE" I L 9550 5400 60 
$EndSheet
Wire Wire Line
	9550 5000 9100 5000
Text Label 9200 5000 0    60   ~ 0
LED6
Wire Wire Line
	9550 5300 9100 5300
Text Label 9200 5300 0    60   ~ 0
RE6
Wire Wire Line
	9550 5400 9100 5400
Text Label 9200 5400 0    60   ~ 0
DE6
Wire Wire Line
	9550 5100 9250 5100
Text Label 9300 5100 0    60   ~ 0
RX6
Wire Wire Line
	9550 5200 9250 5200
Text Label 9300 5200 0    60   ~ 0
TX
Wire Wire Line
	8450 1550 8700 1550
Wire Wire Line
	8450 1650 8700 1650
$Comp
L VDD #PWR019
U 1 1 556C01FE
P 8450 1850
F 0 "#PWR019" H 8450 1950 30  0001 C CNN
F 1 "VDD" H 8450 1960 30  0000 C CNN
F 2 "" H 8450 1850 60  0000 C CNN
F 3 "" H 8450 1850 60  0000 C CNN
	1    8450 1850
	0    1    1    0   
$EndComp
Text Label 8700 1550 2    60   ~ 0
RX3
Text Label 8700 1750 2    60   ~ 0
RX1
Text Label 8700 2150 2    60   ~ 0
RX6
$Comp
L VDD #PWR020
U 1 1 556C11D7
P 8050 1600
F 0 "#PWR020" H 8050 1700 30  0001 C CNN
F 1 "VDD" H 8050 1710 30  0000 C CNN
F 2 "" H 8050 1600 60  0000 C CNN
F 3 "" H 8050 1600 60  0000 C CNN
	1    8050 1600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR021
U 1 1 556C16CA
P 7550 1100
F 0 "#PWR021" H 7550 1200 30  0001 C CNN
F 1 "VDD" H 7550 1210 30  0000 C CNN
F 2 "" H 7550 1100 60  0000 C CNN
F 3 "" H 7550 1100 60  0000 C CNN
	1    7550 1100
	1    0    0    -1  
$EndComp
Connection ~ 5450 2150
Wire Wire Line
	5550 2550 5550 2150
Wire Wire Line
	5650 2550 5650 2150
Wire Wire Line
	5750 2550 5750 2150
Wire Wire Line
	5850 2550 5850 2150
Wire Wire Line
	5950 2550 5950 2150
Wire Wire Line
	6050 2150 6050 2550
Wire Wire Line
	6750 3650 7250 3650
Wire Wire Line
	5950 4650 5950 5000
Wire Wire Line
	5850 4650 5850 5000
Wire Wire Line
	5750 4650 5750 5000
Wire Wire Line
	5650 4650 5650 5000
Wire Wire Line
	5550 4650 5550 5000
Wire Wire Line
	5450 4650 5450 5000
Wire Wire Line
	5350 4650 5350 5000
Wire Wire Line
	4650 3950 4250 3950
Wire Wire Line
	4650 3850 4250 3850
Wire Wire Line
	4650 3750 4250 3750
Wire Wire Line
	4250 3450 4650 3450
Wire Wire Line
	4650 3350 4250 3350
$Comp
L LED-RESCUE-lux_hub D1
U 1 1 556C41B7
P 8150 5200
F 0 "D1" H 8150 5300 50  0000 C CNN
F 1 "TX" H 8150 5100 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8350 5300 24  0000 C CNN
F 3 "" H 8150 5200 60  0000 C CNN
	1    8150 5200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR022
U 1 1 556C4220
P 8350 5200
F 0 "#PWR022" H 8350 5200 30  0001 C CNN
F 1 "GND" H 8350 5130 30  0001 C CNN
F 2 "" H 8350 5200 60  0000 C CNN
F 3 "" H 8350 5200 60  0000 C CNN
	1    8350 5200
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-lux_hub R4
U 1 1 556C43F1
P 7700 5200
F 0 "R4" V 7780 5200 40  0000 C CNN
F 1 "470R" V 7707 5201 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7630 5200 30  0000 C CNN
F 3 "" H 7700 5200 30  0000 C CNN
	1    7700 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5200 6900 5200
Text Label 6950 5200 0    60   ~ 0
TX_LED
$Comp
L LED-RESCUE-lux_hub D2
U 1 1 556C45B3
P 8150 5500
F 0 "D2" H 8150 5600 50  0000 C CNN
F 1 "RX" H 8150 5400 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8350 5600 24  0000 C CNN
F 3 "" H 8150 5500 60  0000 C CNN
	1    8150 5500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR023
U 1 1 556C45B9
P 8350 5500
F 0 "#PWR023" H 8350 5500 30  0001 C CNN
F 1 "GND" H 8350 5430 30  0001 C CNN
F 2 "" H 8350 5500 60  0000 C CNN
F 3 "" H 8350 5500 60  0000 C CNN
	1    8350 5500
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-lux_hub R5
U 1 1 556C45BF
P 7700 5500
F 0 "R5" V 7780 5500 40  0000 C CNN
F 1 "470R" V 7707 5501 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7630 5500 30  0000 C CNN
F 3 "" H 7700 5500 30  0000 C CNN
	1    7700 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5500 6900 5500
Text Label 6950 5500 0    60   ~ 0
RX_LED
$Comp
L BARREL_JACK CON1
U 1 1 556C5F74
P 1300 2200
F 0 "CON1" H 1300 2450 60  0000 C CNN
F 1 "48V" H 1300 2000 60  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1300 2550 28  0000 C CNN
F 3 "" H 1300 2200 60  0000 C CNN
	1    1300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2200 1700 2200
Wire Wire Line
	1700 2200 1700 2300
Wire Wire Line
	1700 2300 1700 2400
Wire Wire Line
	1700 2300 1600 2300
Connection ~ 1700 2300
$Comp
L GND-RESCUE-lux_hub #PWR024
U 1 1 556C5F7E
P 1700 2400
F 0 "#PWR024" H 1700 2400 30  0001 C CNN
F 1 "GND" H 1700 2330 30  0001 C CNN
F 2 "" H 1700 2400 60  0000 C CNN
F 3 "" H 1700 2400 60  0000 C CNN
	1    1700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2100 1600 2100
Wire Wire Line
	1700 1850 1700 2100
$Comp
L C-RESCUE-lux_hub C3
U 1 1 556C5F8C
P 3900 2150
F 0 "C3" H 3900 2250 40  0000 L CNN
F 1 "470u" H 3906 2065 40  0000 L CNN
F 2 "Discret:C2V8" H 4050 2000 30  0000 C CNN
F 3 "" H 3900 2150 60  0000 C CNN
	1    3900 2150
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-lux_hub C1
U 1 1 556C6667
P 2350 2100
F 0 "C1" H 2350 2200 40  0000 L CNN
F 1 "100n" H 2356 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2350 1950 30  0000 C CNN
F 3 "" H 2350 2100 60  0000 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-lux_hub R1
U 1 1 556C66D0
P 2350 2650
F 0 "R1" V 2430 2650 40  0000 C CNN
F 1 "100K" V 2357 2651 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2280 2650 30  0000 C CNN
F 3 "" H 2350 2650 30  0000 C CNN
	1    2350 2650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR025
U 1 1 556C6C95
P 2350 2950
F 0 "#PWR025" H 2350 2950 30  0001 C CNN
F 1 "GND" H 2350 2880 30  0001 C CNN
F 2 "" H 2350 2950 60  0000 C CNN
F 3 "" H 2350 2950 60  0000 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1850 3250 1850
Wire Wire Line
	3250 1850 3650 1850
Wire Wire Line
	3650 1850 3900 1850
Wire Wire Line
	3900 1850 4000 1850
$Comp
L +48V #PWR026
U 1 1 556C6EDA
P 4000 1750
F 0 "#PWR026" H 4000 1880 20  0001 C CNN
F 1 "+48V" H 4000 1850 30  0000 C CNN
F 2 "" H 4000 1750 60  0000 C CNN
F 3 "" H 4000 1750 60  0000 C CNN
	1    4000 1750
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 556C7621
P 2000 1850
F 0 "F1" H 2100 1900 40  0000 C CNN
F 1 "5A" H 1900 1800 40  0000 C CNN
F 2 "FUSE5-20" H 2000 1700 28  0000 C CNN
F 3 "" H 2000 1850 60  0000 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1850 1750 1850
Wire Wire Line
	2250 1850 2350 1850
Wire Wire Line
	2350 1850 2450 1850
$Comp
L R-RESCUE-lux_hub R2
U 1 1 556C8699
P 3650 2150
F 0 "R2" V 3730 2150 40  0000 C CNN
F 1 "15K" V 3657 2151 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3580 2150 30  0000 C CNN
F 3 "" H 3650 2150 30  0000 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR027
U 1 1 556C8708
P 3800 2500
F 0 "#PWR027" H 3800 2500 30  0001 C CNN
F 1 "GND" H 3800 2430 30  0001 C CNN
F 2 "" H 3800 2500 60  0000 C CNN
F 3 "" H 3800 2500 60  0000 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-lux_hub R42
U 1 1 556BCDDE
P 2950 2400
F 0 "R42" V 3030 2400 40  0000 C CNN
F 1 "120R" V 2957 2401 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2880 2400 30  0000 C CNN
F 3 "" H 2950 2400 30  0000 C CNN
	1    2950 2400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2350 1850 2350 1900
Connection ~ 2350 1850
$Comp
L MOSFET_P Q1
U 1 1 556C6432
P 2650 1950
F 0 "Q1" H 2650 2140 60  0000 R CNN
F 1 "DMP6023LE-13" V 2850 2300 60  0000 R CNN
F 2 "SOT223" V 2950 1950 60  0000 C CNN
F 3 "" H 2650 1950 60  0000 C CNN
	1    2650 1950
	0    1    -1   0   
$EndComp
Wire Wire Line
	2350 2400 2650 2400
Wire Wire Line
	2650 2400 2700 2400
Wire Wire Line
	2650 2150 2650 2400
Wire Wire Line
	2650 2400 2650 2450
Connection ~ 2650 2400
Connection ~ 2350 2400
$Comp
L LED-RESCUE-lux_hub D15
U 1 1 556C26D9
P 8150 5800
F 0 "D15" H 8150 5900 50  0000 C CNN
F 1 "VDD" H 8150 5700 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8350 5900 24  0000 C CNN
F 3 "" H 8150 5800 60  0000 C CNN
	1    8150 5800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR028
U 1 1 556C26DF
P 8350 5800
F 0 "#PWR028" H 8350 5800 30  0001 C CNN
F 1 "GND" H 8350 5730 30  0001 C CNN
F 2 "" H 8350 5800 60  0000 C CNN
F 3 "" H 8350 5800 60  0000 C CNN
	1    8350 5800
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-lux_hub R49
U 1 1 556C26E5
P 7700 5800
F 0 "R49" V 7780 5800 40  0000 C CNN
F 1 "470R" V 7707 5801 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7630 5800 30  0000 C CNN
F 3 "" H 7700 5800 30  0000 C CNN
	1    7700 5800
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-lux_hub D16
U 1 1 556C26ED
P 8150 6100
F 0 "D16" H 8150 6200 50  0000 C CNN
F 1 "+48V" H 8150 6000 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8350 6200 24  0000 C CNN
F 3 "" H 8150 6100 60  0000 C CNN
	1    8150 6100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR029
U 1 1 556C26F3
P 8350 6100
F 0 "#PWR029" H 8350 6100 30  0001 C CNN
F 1 "GND" H 8350 6030 30  0001 C CNN
F 2 "" H 8350 6100 60  0000 C CNN
F 3 "" H 8350 6100 60  0000 C CNN
	1    8350 6100
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-lux_hub R50
U 1 1 556C26F9
P 7700 6100
F 0 "R50" V 7780 6100 40  0000 C CNN
F 1 "10K" V 7707 6101 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7630 6100 30  0000 C CNN
F 3 "" H 7700 6100 30  0000 C CNN
	1    7700 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5800 6900 5800
Wire Wire Line
	6900 6100 7450 6100
$Comp
L VDD #PWR030
U 1 1 556C3C98
P 6900 5750
F 0 "#PWR030" H 6900 5850 30  0001 C CNN
F 1 "VDD" H 6900 5860 30  0000 C CNN
F 2 "" H 6900 5750 60  0000 C CNN
F 3 "" H 6900 5750 60  0000 C CNN
	1    6900 5750
	1    0    0    -1  
$EndComp
$Comp
L +48V #PWR031
U 1 1 556C3C9E
P 6900 6050
F 0 "#PWR031" H 6900 6180 20  0001 C CNN
F 1 "+48V" H 6900 6150 30  0000 C CNN
F 2 "" H 6900 6050 60  0000 C CNN
F 3 "" H 6900 6050 60  0000 C CNN
	1    6900 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5800 6900 5750
Wire Wire Line
	6900 6050 6900 6100
Text Label 4250 3950 0    60   ~ 0
RE1
Text Label 4250 3850 0    60   ~ 0
DE1
Text Label 4250 3750 0    60   ~ 0
RE2
Text Label 4250 3450 0    60   ~ 0
DE2
Text Label 5350 5000 1    60   ~ 0
LED1
Text Label 5450 5000 1    60   ~ 0
LED2
Text Label 5550 5000 1    60   ~ 0
LED3
Text Label 5650 5000 1    60   ~ 0
LED4
Text Label 5750 5000 1    60   ~ 0
LED5
Text Label 5850 5000 1    60   ~ 0
LED6
Wire Wire Line
	8450 2050 8700 2050
Wire Wire Line
	8450 2150 8700 2150
Text Label 8700 1450 2    60   ~ 0
RX4
Text Label 8700 2050 2    60   ~ 0
RX5
Text Label 4250 3350 0    60   ~ 0
RE3
Text Label 5450 1750 3    60   ~ 0
DE3
Text Label 5850 2150 3    60   ~ 0
RE4
Text Label 5750 2150 3    60   ~ 0
DE4
Text Label 5650 2150 3    60   ~ 0
RE5
Text Label 5950 2150 3    60   ~ 0
RE6
Text Label 5550 2150 3    60   ~ 0
DE5
Text Label 6050 2150 3    60   ~ 0
DE6
$Comp
L CONN_4 P7
U 1 1 556E1D92
P 2450 5500
F 0 "P7" V 2400 5500 50  0000 C CNN
F 1 "CONN_4" V 2500 5500 50  0000 C CNN
F 2 "SIL-4" V 2600 5500 60  0000 C CNN
F 3 "" H 2450 5500 60  0000 C CNN
	1    2450 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 5350 3550 5350
Wire Wire Line
	2800 5450 3450 5450
Wire Wire Line
	2800 5550 3550 5550
Wire Wire Line
	2800 5650 3450 5650
$Comp
L VCC #PWR032
U 1 1 556E2B11
P 3550 5200
F 0 "#PWR032" H 3550 5300 30  0001 C CNN
F 1 "VCC" H 3550 5300 30  0000 C CNN
F 2 "" H 3550 5200 60  0000 C CNN
F 3 "" H 3550 5200 60  0000 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5350 3550 5200
$Comp
L GND-RESCUE-lux_hub #PWR033
U 1 1 556E2C97
P 3550 5750
F 0 "#PWR033" H 3550 5750 30  0001 C CNN
F 1 "GND" H 3550 5680 30  0001 C CNN
F 2 "" H 3550 5750 60  0000 C CNN
F 3 "" H 3550 5750 60  0000 C CNN
	1    3550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5550 3550 5750
Text Label 3450 5450 2    60   ~ 0
SWCLK
Text Label 3450 5650 2    60   ~ 0
SWDIO
Text Label 7250 3650 2    60   ~ 0
sRX
Text Label 5950 5000 1    60   ~ 0
RX_LED
Text Notes 3450 2700 0    60   ~ 0
P(R2)=150mW
Text Notes 3450 2800 0    60   ~ 0
TC(R2,C3)=7s
Text Notes 2400 1550 0    60   ~ 0
P(Q1)~~0.5W
$Comp
L C-RESCUE-lux_hub C14
U 1 1 571D1189
P 6850 4550
F 0 "C14" H 6850 4650 40  0000 L CNN
F 1 "100n" H 6856 4465 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6850 4200 30  0000 C CNN
F 3 "" H 6850 4550 60  0000 C CNN
	1    6850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR034
U 1 1 571D118F
P 6850 4750
F 0 "#PWR034" H 6850 4750 30  0001 C CNN
F 1 "GND" H 6850 4680 30  0001 C CNN
F 2 "" H 6850 4750 60  0000 C CNN
F 3 "" H 6850 4750 60  0000 C CNN
	1    6850 4750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR035
U 1 1 571D1195
P 6850 4350
F 0 "#PWR035" H 6850 4450 30  0001 C CNN
F 1 "VDD" H 6850 4460 30  0000 C CNN
F 2 "" H 6850 4350 60  0000 C CNN
F 3 "" H 6850 4350 60  0000 C CNN
	1    6850 4350
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-lux_hub C15
U 1 1 571D138C
P 7050 4550
F 0 "C15" H 7050 4650 40  0000 L CNN
F 1 "4u7" H 7056 4465 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7088 4400 30  0001 C CNN
F 3 "" H 7050 4550 60  0000 C CNN
	1    7050 4550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-lux_hub #PWR036
U 1 1 571D1392
P 7050 4750
F 0 "#PWR036" H 7050 4750 30  0001 C CNN
F 1 "GND" H 7050 4680 30  0001 C CNN
F 2 "" H 7050 4750 60  0000 C CNN
F 3 "" H 7050 4750 60  0000 C CNN
	1    7050 4750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR037
U 1 1 571D1398
P 7050 4350
F 0 "#PWR037" H 7050 4450 30  0001 C CNN
F 1 "VDD" H 7050 4460 30  0000 C CNN
F 2 "" H 7050 4350 60  0000 C CNN
F 3 "" H 7050 4350 60  0000 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2300 2350 2400
$Comp
L C-RESCUE-lux_hub C13
U 1 1 571D4090
P 3250 2100
F 0 "C13" H 3250 2200 40  0000 L CNN
F 1 "100n" H 3256 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3250 1950 30  0000 C CNN
F 3 "" H 3250 2100 60  0000 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1850 3250 1900
Connection ~ 3250 1850
Wire Wire Line
	3250 2300 3250 2400
Wire Wire Line
	3250 2400 3200 2400
Wire Wire Line
	2350 2900 2350 2950
Text Notes 2500 2600 0    60   ~ 0
Tss=20ms
Wire Wire Line
	4000 1850 4000 1750
Wire Wire Line
	3900 1850 3900 1950
Connection ~ 3900 1850
Wire Wire Line
	3650 1850 3650 1900
Connection ~ 3650 1850
Wire Wire Line
	3650 2400 3650 2450
Wire Wire Line
	3650 2450 3800 2450
Wire Wire Line
	3800 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2350
Wire Wire Line
	3800 2450 3800 2500
Connection ~ 3800 2450
$Comp
L SW_PUSH SW1
U 1 1 574A225E
P 4900 1750
F 0 "SW1" H 5050 1860 50  0000 C CNN
F 1 "BOOT" H 4900 1670 50  0000 C CNN
F 2 "SW_SPST_EVQPE1" H 4900 1600 50  0000 C CNN
F 3 "" H 4900 1750 50  0000 C CNN
	1    4900 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 1400 4900 1450
Wire Wire Line
	4900 2050 4900 2150
Wire Wire Line
	8450 1750 8700 1750
$Comp
L VDD #PWR038
U 1 1 574B34ED
P 8450 1950
F 0 "#PWR038" H 8450 2050 30  0001 C CNN
F 1 "VDD" H 8450 2060 30  0000 C CNN
F 2 "" H 8450 1950 60  0000 C CNN
F 3 "" H 8450 1950 60  0000 C CNN
	1    8450 1950
	0    1    1    0   
$EndComp
$EndSCHEMATC
