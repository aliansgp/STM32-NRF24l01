################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/stm_lib/src/stm32f10x_gpio.c \
../Core/stm_lib/src/stm32f10x_rcc.c \
../Core/stm_lib/src/stm32f10x_spi.c \
../Core/stm_lib/src/stm32f10x_usart.c 

OBJS += \
./Core/stm_lib/src/stm32f10x_gpio.o \
./Core/stm_lib/src/stm32f10x_rcc.o \
./Core/stm_lib/src/stm32f10x_spi.o \
./Core/stm_lib/src/stm32f10x_usart.o 

C_DEPS += \
./Core/stm_lib/src/stm32f10x_gpio.d \
./Core/stm_lib/src/stm32f10x_rcc.d \
./Core/stm_lib/src/stm32f10x_spi.d \
./Core/stm_lib/src/stm32f10x_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/stm_lib/src/%.o Core/stm_lib/src/%.su Core/stm_lib/src/%.cyclo: ../Core/stm_lib/src/%.c Core/stm_lib/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-stm_lib-2f-src

clean-Core-2f-stm_lib-2f-src:
	-$(RM) ./Core/stm_lib/src/stm32f10x_gpio.cyclo ./Core/stm_lib/src/stm32f10x_gpio.d ./Core/stm_lib/src/stm32f10x_gpio.o ./Core/stm_lib/src/stm32f10x_gpio.su ./Core/stm_lib/src/stm32f10x_rcc.cyclo ./Core/stm_lib/src/stm32f10x_rcc.d ./Core/stm_lib/src/stm32f10x_rcc.o ./Core/stm_lib/src/stm32f10x_rcc.su ./Core/stm_lib/src/stm32f10x_spi.cyclo ./Core/stm_lib/src/stm32f10x_spi.d ./Core/stm_lib/src/stm32f10x_spi.o ./Core/stm_lib/src/stm32f10x_spi.su ./Core/stm_lib/src/stm32f10x_usart.cyclo ./Core/stm_lib/src/stm32f10x_usart.d ./Core/stm_lib/src/stm32f10x_usart.o ./Core/stm_lib/src/stm32f10x_usart.su

.PHONY: clean-Core-2f-stm_lib-2f-src

