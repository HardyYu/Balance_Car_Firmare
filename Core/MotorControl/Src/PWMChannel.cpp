#include "../Inc/PWMChannel.hpp"

/* Example
 * PWMChannel pwmChannel = PWMChannel(0, nullptr,&htim2, TIM_CHANNEL_1);
 * */

PWMChannel::PWMChannel(uint16_t pin_num, GPIO_TypeDef* port, TIM_HandleTypeDef* timer,
                       uint16_t timer_channel)
    : pin_num_(pin_num), port_(port), timer_(timer), timer_channel_(timer_channel) {}

void PWMChannel::setup(void) {
    period_ticks_ = timer_->Init.Period;

    HAL_TIM_PWM_Start(timer_, timer_channel_);

}

void PWMChannel::set(uint8_t percent) {
    if (percent > 100) {
        return;
    }

    uint32_t us = (percent * (MAX_SIGNAL - MIN_SIGNAL)) / 100 + MIN_SIGNAL;
    uint32_t ticks =
        static_cast<uint32_t>((static_cast<float>(us) / static_cast<float>(PWM_PERIOD)) *
                              static_cast<float>(period_ticks_));

    __HAL_TIM_SET_COMPARE(timer_, timer_channel_, ticks);
}
