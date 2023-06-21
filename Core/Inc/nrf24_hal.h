#ifndef __NRF24_HAL_H
#define __NRF24_HAL_H


// Hardware abstraction layer for NRF24L01+ transceiver (hardware depended functions)
// GPIO PINs definition
// GPIO PINs initialization and control functions
// SPI transmit functions


// Peripheral libraries
#include "main.h"
#include "spi.h"
#include "gpio.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx.h"
#include "stm32f407xx.h"

// SPI port peripheral
#define nRF24_SPI_PORT             SPI1

// nRF24 GPIO peripherals
//#define nRF24_GPIO_PERIPHERALS     RCC_APB2ENR_IOPBEN

// CE (chip enable) PIN (PA3)
#define nRF24_CE_PORT              GPIOA
#define nRF24_CE_PIN               GPIO_PIN_3
#define nRF24_CE_L                 HAL_GPIO_WritePin(nRF24_CE_PORT, nRF24_CE_PIN,0)
#define nRF24_CE_H                 HAL_GPIO_WritePin(nRF24_CE_PORT, nRF24_CE_PIN,1)

// CSN (chip select negative) PIN (PA4)
#define nRF24_CSN_PORT             GPIOA
#define nRF24_CSN_PIN              GPIO_PIN_4
#define nRF24_CSN_L                HAL_GPIO_WritePin(nRF24_CSN_PORT, nRF24_CSN_PIN,0)
#define nRF24_CSN_H                HAL_GPIO_WritePin(nRF24_CSN_PORT, nRF24_CSN_PIN,1)

// IRQ PIN (PB10)
#define nRF24_IRQ_PORT             GPIOA
#define nRF24_IRQ_PIN              GPIO_PIN_0


// Macros for the RX on/off
#define nRF24_RX_ON                nRF24_CE_H
#define nRF24_RX_OFF               nRF24_CE_L


// Function prototypes
void nRF24_GPIO_Init(void);
uint8_t nRF24_LL_RW(uint8_t data);

#endif // __NRF24_HAL_H
