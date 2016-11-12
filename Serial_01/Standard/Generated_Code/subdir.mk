################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Generated_Code/MCUinit.c" 

C_SRCS += \
../Generated_Code/MCUinit.c 

OBJS += \
./Generated_Code/MCUinit_c.obj 

OBJS_QUOTED += \
"./Generated_Code/MCUinit_c.obj" 

C_DEPS += \
./Generated_Code/MCUinit_c.d 

C_DEPS_QUOTED += \
"./Generated_Code/MCUinit_c.d" 

OBJS_OS_FORMAT += \
./Generated_Code/MCUinit_c.obj 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/MCUinit_c.obj: ../Generated_Code/MCUinit.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Generated_Code/MCUinit.args" -ObjN="Generated_Code/MCUinit_c.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/%.d: ../Generated_Code/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


