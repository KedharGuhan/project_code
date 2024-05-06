// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of img_in
//        bit 31~0 - img_in[31:0] (Read/Write)
// 0x14 : Data signal of img_in
//        bit 31~0 - img_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of filter
//        bit 31~0 - filter[31:0] (Read/Write)
// 0x20 : Data signal of filter
//        bit 31~0 - filter[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of conv_out
//        bit 31~0 - conv_out[31:0] (Read/Write)
// 0x2c : Data signal of conv_out
//        bit 31~0 - conv_out[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of maxpool_out
//        bit 31~0 - maxpool_out[31:0] (Read/Write)
// 0x38 : Data signal of maxpool_out
//        bit 31~0 - maxpool_out[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_IMG_IN_DATA      0x10
#define CONTROL_R_BITS_IMG_IN_DATA      64
#define CONTROL_R_ADDR_FILTER_DATA      0x1c
#define CONTROL_R_BITS_FILTER_DATA      64
#define CONTROL_R_ADDR_CONV_OUT_DATA    0x28
#define CONTROL_R_BITS_CONV_OUT_DATA    64
#define CONTROL_R_ADDR_MAXPOOL_OUT_DATA 0x34
#define CONTROL_R_BITS_MAXPOOL_OUT_DATA 64
