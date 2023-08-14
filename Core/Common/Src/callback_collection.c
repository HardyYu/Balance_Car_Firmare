#include <stdint.h>
#include "usart.h"

static uint8_t rxData[20];

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
  if(huart->Instance==USART1)
  {
    if(rxData[0] == 78) // Ascii value of 'N' is 78 (N for NO)
    {
    	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_SET);
    }
    else if (rxData[0] ==89) // Ascii value of 'Y' is 89 (Y for YES)
    {
    	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_RESET);
    }
    HAL_UART_Receive_IT(&huart1, rxData,20); // Enabling interrupt receive again
  }
}
