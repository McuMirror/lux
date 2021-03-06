#ifndef __HAL_H
#define __HAL_H

#include <stdint.h>

void init();

// Zeros the read pointer, DMA counter, and enables endless DMA for RX
void enable_rx();

// Disables RX DMA request
void disable_rx();

// Enable the driver on the RS-485 tranceiver
void enable_tx();

// Disable the driver on the RS-485 tranceiver
void disable_tx();

// Calculate the number of bytes behind the DMA counter the read pointer currently is.
// Assume no overflows.
int16_t bytes_to_read();

// Read n bytes from serial buffer into chr
void read_bytes(uint8_t* chr, int n);

// Return number of characters remaining in this half-buffer.
int16_t bytes_to_write();

// Write bytes to the current half-buffer
void write_bytes(uint8_t* chr, int n);

// Returns whether or not the USART receiver is idle (no characters received recently)
uint8_t rx_idle();

// Returns whether or not the USART transmitter is idle (characters done being sent)
uint8_t tx_idle();

// Sets which channels serial comms go in/out over and sets LEDs
void set_enabled_channels(uint8_t channels);

#endif
