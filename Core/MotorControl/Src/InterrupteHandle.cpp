/*
 * InterrupteHandle.cpp
 *
 *  Created on: Jun 30, 2023
 *      Author: yudon
 */

#include "../Inc/MotorEncoder.hpp"
#include "gpio.h"
#include "../Inc/MotorEncoderConfig.hpp"

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if(GPIO_Pin == LeftMotorEncoderAGPIO)
	{
		if(! LeftMotor.isForward)
		{
			LeftMotor.isForward = true;
		}

		LeftMotor.duration++;
	}
	if(GPIO_Pin == LeftMotorEncoderBGPIO)
	{
		if(LeftMotor.isForward)
		{
			LeftMotor.isForward = false;
		}
		LeftMotor.duration--;
	}
	if(GPIO_Pin == RightMotorEncoderAGPIO)
	{
		if(! RightMotor.isForward)
		{
			RightMotor.isForward = true;
		}

		RightMotor.duration++;
	}
	if(GPIO_Pin == RightMotorEncoderBGPIO)
	{
		if(RightMotor.isForward)
		{
			RightMotor.isForward = false;
		}
		RightMotor.duration--;
	}

}

