/*
 * Motor_Encoder.hpp
 *
 *  Created on: Jun 29, 2023
 *      Author: yudon
 */

#ifndef MOTORCONTROL_INC_MOTORENCODER_HPP_
#define MOTORCONTROL_INC_MOTORENCODER_HPP_

#include "PWMChannel.hpp"


class MotorEncoder{
	private:
		float motorSpeed;
		PWMChannel* forwardPWM;
		PWMChannel* reversePWM;
		int prev_speed_timer_val;

		const float DIST_PER_COUNT = 0.0005;
	public:
		uint32_t  duration;
		bool isForward;

		MotorEncoder(TIM_HandleTypeDef* timer, uint16_t timer_channelA, uint16_t timer_channelB);
		~MotorEncoder();
		bool MotorEncoder_Init();
		//require timer involved, require some speed constant
		float getWheelSpeed();
		//@param a percentage from -100 to 100
		void setWheelSpeed(float percentage);

};



#endif /* MOTORCONTROL_INC_MOTORENCODER_HPP_ */
