`timescale 1ns / 1ps
// Author: Eduardo Chielle


module Binder #(parameter N_BYTES=32)(
    clock, reset,
    ext_valid, ext_payload, ext_keep, ext_divider, ext_last, ext_done,
    valid, payload, done
);

localparam N_BITS = N_BYTES << 3;
localparam WIDTH = 8; // bytes
localparam LOG_BITS = $clog2(N_BITS);

input wire clock;
input wire reset;

// Extractor

input wire ext_valid;
input wire[63:0] ext_payload;
input wire[5:0] ext_keep;
input wire[5:0] ext_divider;
input wire ext_last;
input wire ext_done;

// outputs

output reg valid;  // the output has new data
output reg[N_BITS-1:0] payload;
output reg done; // signalizes the delivery of all payloads of a stream

reg[63:0] prev;
reg first;

wire[5:0] keep_div;
wire[LOG_BITS-1:0] keep_shift, div_shift;
assign keep_div = ext_keep - ext_divider;
assign keep_shift = {{(LOG_BITS-6){1'b0}}, keep_div} << 3;
assign div_shift = {{(LOG_BITS-6){1'b0}}, ext_divider} << 3;

always @(posedge clock) begin
    if (reset) begin
        prev <= 64'd0;
        first <= 1'b1;
        valid <= 1'b0;
        payload <= {(N_BITS){1'b0}};
        done <= 1'b0;
    end else if (ext_valid) begin
        first <= ext_last;
        if (first) begin
            payload <= ({{(N_BITS-64){1'b0}}, prev} << keep_shift) | (ext_payload >> div_shift);
            prev <= 64'd0;
        end else begin
            payload <= (payload << keep_shift) | (ext_payload >> div_shift);
            if (ext_divider) begin
                prev <= (ext_payload << ext_keep) >> WIDTH;
            end
        end
        valid <= ext_last;
        done <= ext_done;
    end else begin
        valid <= 1'b0;
        payload <= {(N_BITS){1'b0}};
        done <= 1'b0;
    end
end

endmodule
