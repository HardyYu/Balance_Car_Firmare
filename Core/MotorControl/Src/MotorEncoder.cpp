/*
 * Motor_Encoder.cpp
 *
 *  Created on: Jun 29, 2023
 *      Author: yudon
 */


#include "../Inc/MotorEncoder.hpp"

#define SpeedCalTimer &htim3

MotorEncoder::MotorEncoder(TIM_HandleTypeDef* timer, uint16_t timer_channelA, uint16_t timer_channelB)
{
	motorSpeed = 0;
	prev_speed_timer_val = 0;
	duration = 0;
	isForward = true;
	forwardPWM = new PWMChannel(0, nullptr,timer, timer_channelA);
	reversePWM = new PWMChannel(0, nullptr,timer, timer_channelB);
}

MotorEncoder::~MotorEncoder()
{
	delete forwardPWM;
	delete reversePWM;
}

bool MotorEncoder::MotorEncoder_Init()
{
	//start the interrupt reading for encoder values
	//do we need a interrupt init?
}

float MotorEncoder::getWheelSpeed()
{
	//do we really need the speed for calculating the PID?
	int current_timer_val =  __HAL_TIM_GET_COUNTER(SpeedCalTimer);
	float second = (current_timer_val - prev_speed_timer_val)/ 1000000;
	prev_speed_timer_val = current_timer_val;
	float distance = DIST_PER_COUNT * duration;
	motorSpeed = distance / second;
	return motorSpeed;
}

void MotorEncoder::setWheelSpeed(float percentage)
{
	if(percentage > 100 || percentage < -100 )
	{
		return;
	}
	else if (percentage > 0)
	{
		forwardPWM->set(percentage);
	}
	else
	{
		reversePWM->set(percentage);
	}
}
