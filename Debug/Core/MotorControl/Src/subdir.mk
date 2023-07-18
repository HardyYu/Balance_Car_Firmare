################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/MotorControl/Src/InterrupteHandle.cpp \
../Core/MotorControl/Src/MotorEncoder.cpp \
../Core/MotorControl/Src/PWMChannel.cpp 

OBJS += \
./Core/MotorControl/Src/InterrupteHandle.o \
./Core/MotorControl/Src/MotorEncoder.o \
./Core/MotorControl/Src/PWMChannel.o 

CPP_DEPS += \
./Core/MotorControl/Src/InterrupteHandle.d \
./Core/MotorControl/Src/MotorEncoder.d \
./Core/MotorControl/Src/PWMChannel.d 


# Each subdirectory must supply rules for building sources it contributes
Core/MotorControl/Src/%.o Core/MotorControl/Src/%.su Core/MotorControl/Src/%.cyclo: ../Core/MotorControl/Src/%.cpp Core/MotorControl/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-MotorControl-2f-Src

clean-Core-2f-MotorControl-2f-Src:
	-$(RM) ./Core/MotorControl/Src/InterrupteHandle.cyclo ./Core/MotorControl/Src/InterrupteHandle.d ./Core/MotorControl/Src/InterrupteHandle.o ./Core/MotorControl/Src/InterrupteHandle.su ./Core/MotorControl/Src/MotorEncoder.cyclo ./Core/MotorControl/Src/MotorEncoder.d ./Core/MotorControl/Src/MotorEncoder.o ./Core/MotorControl/Src/MotorEncoder.su ./Core/MotorControl/Src/PWMChannel.cyclo ./Core/MotorControl/Src/PWMChannel.d ./Core/MotorControl/Src/PWMChannel.o ./Core/MotorControl/Src/PWMChannel.su

.PHONY: clean-Core-2f-MotorControl-2f-Src

