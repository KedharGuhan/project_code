
set TopModule "Filter2d_accel"
set ClockPeriod 3.3
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix Filter2d_accel_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-2
set SourceFiles {sc {} c /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_accel.cpp}
set SourceFlags {sc {} c {{ -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config  -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include  -I../../././.  -D__SDSVHLS__ -std=c++0x} {-I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/config -I/home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/include -I./. -D__SDSVHLS__ -std=c++0x}}}
set DirectiveFile {}
set TBFiles {verilog /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp bc /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp sc /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp vhdl /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp c {} cas /home/kedhar/Vitis_Libraries/vision/L1/examples/customconv/../../../L1/examples/customconv/xf_custom_convolution_tb.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile sol1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
