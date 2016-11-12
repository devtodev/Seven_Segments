################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"/home/Carlos/CodeWarrior/fuentes/Serial 04/Sources/display_led.c" \
"/home/Carlos/CodeWarrior/fuentes/Serial 04/Sources/interrupts.c" \
"/home/Carlos/CodeWarrior/fuentes/Serial 04/Sources/main.c" \
"/home/Carlos/CodeWarrior/fuentes/Serial 04/Sources/timer.c" 

C_SRCS += \
/home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/display_led.c \
/home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/interrupts.c \
/home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/main.c \
/home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/timer.c 

OBJS += \
./Sources/display_led_c.obj \
./Sources/interrupts_c.obj \
./Sources/main_c.obj \
./Sources/timer_c.obj 

OBJS_QUOTED += \
"./Sources/display_led_c.obj" \
"./Sources/interrupts_c.obj" \
"./Sources/main_c.obj" \
"./Sources/timer_c.obj" 

C_DEPS += \
./Sources/display_led_c.d \
./Sources/interrupts_c.d \
./Sources/main_c.d \
./Sources/timer_c.d 

C_DEPS_QUOTED += \
"./Sources/display_led_c.d" \
"./Sources/interrupts_c.d" \
"./Sources/main_c.d" \
"./Sources/timer_c.d" 

OBJS_OS_FORMAT += \
./Sources/display_led_c.obj \
./Sources/interrupts_c.obj \
./Sources/main_c.obj \
./Sources/timer_c.obj 


# Each subdirectory must supply rules for building sources it contributes
Sources/display_led_c.obj: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/display_led.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Sources/display_led.args" -ObjN="Sources/display_led_c.obj" "$<" -Lm="Sources/display_led_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/display_led_c.d: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/display_led.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/interrupts_c.obj: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/interrupts.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Sources/interrupts.args" -ObjN="Sources/interrupts_c.obj" "$<" -Lm="Sources/interrupts_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/interrupts_c.d: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/interrupts.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/main_c.obj: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Sources/main.args" -ObjN="Sources/main_c.obj" "$<" -Lm="Sources/main_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/main_c.d: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/main.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/timer_c.obj: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/timer.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Sources/timer.args" -ObjN="Sources/timer_c.obj" "$<" -Lm="Sources/timer_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/timer_c.d: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/timer.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


