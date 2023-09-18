# Balance_Car_Firmare
Hello! This is the introduction to this self-balance car project. This car is supposed to have two wheels and normally it is not supposed to stand on its own. However I decided to add a firmware feature to it so that the car can feel its stance and self-adjust its position to a balanced stance.

![Alt text](https://cdn.discordapp.com/attachments/1120558182306156674/1153344217578483835/IMG_20230815_153801.jpg)

## Materials
stm32f103c8t6 - the microcontroller which is the brain of the car

4V Lithium batteries * 3 - the power source

MPU-6050 - the sensor that tells the car its current stance

hc-05 - Bluetooth which receives the movement control command from user

0.96’’ oled i2c - a screen

mp1584n - a buck converter that steps down the input voltage to 5V 

Motors, wheels w/ encoder - encoder ensures that the car knows its speed

l298n motor driver - converts PWM signal into DC motor power (this used to be DRV883, but it couldn't tolerate the 12V and blew up)

## PID ALgorithm Concepts
There will be three PID loops to ensure the balance on the three axes

1. Stance loop
The car wouldn't fall forward or backward but keep a balanced stance

>balance feedback = pitch_bias * balance_kp + gyro_y * balance_kd 

2. Speed loop
For the car to move at the desired speed which could overcome the car's own momentum

>Velocity feedback = speed_bias * speed_kp + gyro_x * speed_ki

3. Turning loop
For the car to make the desired turn

>Turning feedback = turning_bias * turn_kp + yaw * turn_kd

## STM32 IOC configuration 
I2C1 → MPU6090

I2C2 → OLED

UART1 → Blue Tooth Module

TIM2CH1 → PWM Output for Left Motor A

TIM2CH2 → PWM Output for Left Motor B

TIM1CH1 → PWM Output for Right Motor A

TIM1CH2 → PWM Output for Right Motor  B

TIM4 → PID Algorithm Timer

TIM3CH1&CH2 → Motor Speed Calculation

PA4 - 7 → External Interrupt for Motor Encoder

![Alt text](https://media.discordapp.net/attachments/1120558182306156674/1153344218329268335/IMG_20230815_155440.jpg?width=503&height=671)

