################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"$(MCUToolsBaseDirEnv)/lib/hc08c/device/src/mc9s08qe8.c" 

C_SRCS += \
$(MCUToolsBaseDirEnv)/lib/hc08c/device/src/mc9s08qe8.c 

OBJS += \
./Libs/mc9s08qe8_c.obj 

OBJS_QUOTED += \
"./Libs/mc9s08qe8_c.obj" 

C_DEPS += \
./Libs/MC9S08QE8_c.d 

C_DEPS_QUOTED += \
"./Libs/MC9S08QE8_c.d" 

OBJS_OS_FORMAT += \
./Libs/mc9s08qe8_c.obj 


# Each subdirectory must supply rules for building sources it contributes
Libs/mc9s08qe8_c.obj: $(MCUToolsBaseDirEnv)/lib/hc08c/device/src/mc9s08qe8.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Libs/MC9S08QE8.args" -ObjN="Libs/mc9s08qe8_c.obj" "$<" -Lm="Libs/mc9s08qe8_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Libs/MC9S08QE8_c.d: $(MCUToolsBaseDirEnv)/lib/hc08c/device/src/mc9s08qe8.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


