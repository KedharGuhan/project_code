<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="Filter2d_accel" name="customconv_ked.prj">
    <files>
        <file name="/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp" sc="0" tb="1" cflags="-I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/opencv_installation/xilinx-opencv/install/include/opencv4 -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../../. -D__SDSVHLS__ -std=c++0x -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I../../. -D__SDSVHLS__ -std=c++0x -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_accel.cpp" sc="0" tb="false" cflags="-I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I./. -D__SDSVHLS__ -std=c++0x" csimflags="-I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I./. -D__SDSVHLS__ -std=c++0x" blackbox="false"/>
    </files>
    <solutions>
        <solution name="sol1" status=""/>
    </solutions>
    <Simulation argv=" /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../data/128x128.png ">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="-L /home/kedhar/opencv_installation/xilinx-opencv/install/lib -lopencv_imgcodecs -lopencv_imgproc -lopencv_core -lopencv_highgui -lopencv_flann -lopencv_features2d" mflags=""/>
    </Simulation>
</AutoPilot:project>

