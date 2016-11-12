################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"/home/Carlos/CodeWarrior/fuentes/Serial 04/Sources/MCUinit.c" 

C_SRCS += \
/home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/MCUinit.c 

OBJS += \
./Generated\ Code/MCUinit_c.obj 

OBJS_QUOTED += \
"./Generated Code/MCUinit_c.obj" 

C_DEPS += \
./Generated\ Code/MCUinit_c.d 

C_DEPS_QUOTED += \
"./Generated Code/MCUinit_c.d" 

OBJS_OS_FORMAT += \
./Generated\ Code/MCUinit_c.obj 


# Each subdirectory must supply rules for building sources it contributes
Generated\ Code/MCUinit_c.obj: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/MCUinit.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: HCS08 Compiler'
	"$(HC08ToolsEnv)/chc08" -ArgFile"Generated Code/MCUinit.args" -ObjN="Generated Code/MCUinit_c.obj" "$<" -Lm="Generated Code/MCUinit_c.d" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Generated\ Code/MCUinit_c.d: /home/Carlos/CodeWarrior/fuentes/Serial\ 04/Sources/MCUinit.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


