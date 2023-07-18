/*
 * MotorEncoderConfig.hpp
 *
 *  Created on: Jun 30, 2023
 *      Author: yudon
 */

#ifndef MOTORCONTROL_INC_MOTORENCODERCONFIG_HPP_
#define MOTORCONTROL_INC_MOTORENCODERCONFIG_HPP_

#define LeftMotorEncoderAGPIO GPIO_PIN_0
#define LeftMotorEncoderBGPIO GPIO_PIN_1

#define RightMotorEncoderAGPIO GPIO_PIN_2
#define RightMotorEncoderBGPIO GPIO_PIN_3

#define LeftMotorTimer	&htim1
#define RightMotorTimer	&htim2
#define SpeedCalculation &htim3


#include "MotorEncoder.hpp"
static MotorEncoder LeftMotor(LeftMotorTimer, TIM_CHANNEL_1 ,TIM_CHANNEL_2);
static MotorEncoder RightMotor(RightMotorTimer, TIM_CHANNEL_1 ,TIM_CHANNEL_2);



#endif /* MOTORCONTROL_INC_MOTORENCODERCONFIG_HPP_ */
