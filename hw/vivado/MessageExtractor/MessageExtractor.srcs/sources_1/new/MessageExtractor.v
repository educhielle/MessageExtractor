`timescale 1ns / 1ps
// Author: Eduardo Chielle


module MessageExtractor #(parameter LOG_BITS=8)(
    clock, reset,
    tvalid, tready, tdata, tlast,
    valid, payload, done
);

localparam N_BITS = 1 << LOG_BITS;

input wire clock;
input wire reset;

// AXI stream
input wire tvalid;
input wire tlast;
input wire[63:0] tdata;
output wire tready;

// outputs
output wire valid;  // the output has new data
output wire[N_BITS-1:0] payload;
output wire done; // signalizes the delivery of all payloads of a stream

wire ext_valid;
wire[63:0] ext_payload;
wire[5:0] ext_keep;
wire[5:0] ext_divider;
wire ext_last;
wire ext_done;

Extractor extractor(
    clock, reset,
    tvalid, tready, tdata, tlast,
    ext_valid, ext_payload, ext_keep, ext_divider, ext_last, ext_done
);

Binder #(LOG_BITS) binder(
    clock, reset,
    ext_valid, ext_payload, ext_keep, ext_divider, ext_last, ext_done,
    valid, payload, done
);

endmodule
