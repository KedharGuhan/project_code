# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../xf_custom_convolution_tb.cpp ../../../../xf_custom_convolution_accel.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /tools/Xilinx/Vitis_HLS/2023.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /tools/Xilinx/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -L /home/kedhar/opencv_installation/xilinx-opencv/install/lib -lopencv_imgcodecs -lopencv_imgproc -lopencv_core -lopencv_highgui -lopencv_flann -lopencv_features2d
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/xf_custom_convolution_tb.o: ../../../../xf_custom_convolution_tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../xf_custom_convolution_tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/opencv_installation/xilinx-opencv/install/include/opencv4 -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../../../../. -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../../../../. -D__SDSVHLS__ -std=c++0x -D__SDSVHLS__ -std=c++0x -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/xf_custom_convolution_tb.d

$(ObjDir)/xf_custom_convolution_accel.o: ../../../../xf_custom_convolution_accel.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../xf_custom_convolution_accel.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../../../../././. -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../.././. -D__SDSVHLS__ -std=c++0x -D__SDSVHLS__ -std=c++0x  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/xf_custom_convolution_accel.d
