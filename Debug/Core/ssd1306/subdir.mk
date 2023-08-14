################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/ssd1306/ssd1306.c \
../Core/ssd1306/ssd1306_fonts.c \
../Core/ssd1306/ssd1306_tests.c 

C_DEPS += \
./Core/ssd1306/ssd1306.d \
./Core/ssd1306/ssd1306_fonts.d \
./Core/ssd1306/ssd1306_tests.d 

OBJS += \
./Core/ssd1306/ssd1306.o \
./Core/ssd1306/ssd1306_fonts.o \
./Core/ssd1306/ssd1306_tests.o 


# Each subdirectory must supply rules for building sources it contributes
Core/ssd1306/%.o Core/ssd1306/%.su Core/ssd1306/%.cyclo: ../Core/ssd1306/%.c Core/ssd1306/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-ssd1306

clean-Core-2f-ssd1306:
	-$(RM) ./Core/ssd1306/ssd1306.cyclo ./Core/ssd1306/ssd1306.d ./Core/ssd1306/ssd1306.o ./Core/ssd1306/ssd1306.su ./Core/ssd1306/ssd1306_fonts.cyclo ./Core/ssd1306/ssd1306_fonts.d ./Core/ssd1306/ssd1306_fonts.o ./Core/ssd1306/ssd1306_fonts.su ./Core/ssd1306/ssd1306_tests.cyclo ./Core/ssd1306/ssd1306_tests.d ./Core/ssd1306/ssd1306_tests.o ./Core/ssd1306/ssd1306_tests.su

.PHONY: clean-Core-2f-ssd1306

