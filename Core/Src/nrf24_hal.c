#include "nrf24_hal.h"


// Configure the GPIO lines of the nRF24L01 transceiver
// note: IRQ pin must be configured separately
void nRF24_GPIO_Init(void) {

    // Configure CSN pin
	nRF24_CSN_H;

	// Configure CE pin
	nRF24_CE_L;
}

// Low level SPI transmit/receive function (hardware depended)
// input:
//   data - value to transmit via SPI
// return: value received from SPI
uint8_t nRF24_LL_RW(uint8_t data) {
	 // Wait until TX buffer is empty
	while (__HAL_SPI_GET_FLAG(&hspi1, SPI_FLAG_TXE) == RESET);

	// Send byte to SPI (TXE cleared)
	HAL_SPI_Transmit(&hspi1, data, 8, 100);

	//Wait while receive buffer is empty
	while (__HAL_SPI_GET_FLAG(&hspi1, SPI_FLAG_RXNE) == RESET);

	// Return received byte
	return (uint8_t)HAL_SPI_Receive(&hspi1, data, 8, 100);
}
