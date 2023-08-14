################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/MPU6050_Lib/mpu6050.c 

C_DEPS += \
./Core/MPU6050_Lib/mpu6050.d 

OBJS += \
./Core/MPU6050_Lib/mpu6050.o 


# Each subdirectory must supply rules for building sources it contributes
Core/MPU6050_Lib/%.o Core/MPU6050_Lib/%.su Core/MPU6050_Lib/%.cyclo: ../Core/MPU6050_Lib/%.c Core/MPU6050_Lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-MPU6050_Lib

clean-Core-2f-MPU6050_Lib:
	-$(RM) ./Core/MPU6050_Lib/mpu6050.cyclo ./Core/MPU6050_Lib/mpu6050.d ./Core/MPU6050_Lib/mpu6050.o ./Core/MPU6050_Lib/mpu6050.su

.PHONY: clean-Core-2f-MPU6050_Lib

