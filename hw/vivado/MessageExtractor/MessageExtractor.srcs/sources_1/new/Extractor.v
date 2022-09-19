`timescale 1ns / 1ps
// Author: Eduardo Chielle

module Extractor(
    clock, reset,
    tvalid, tready, tdata, tlast,
    valid, payload, keep, divider, last, done
);

localparam WIDTH = 8; // bytes

// inputs
input wire clock;
input wire reset;

// AXI stream
input wire tvalid;
input wire tlast;
input wire[63:0] tdata;
output wire tready;

// outputs
output reg valid; // the output has new data
output reg[63:0] payload;
output reg[5:0] keep; // how many bytes are valid
output reg[5:0] divider; // how many bytes belong to payload 2
output reg last; // it is the last part of the payload
output reg done; // signalizes the delivery of all payloads of a stream

// state registers
reg[15:0] msgCount;
reg[15:0] msgLength;
reg isMsgLengthIncomplete;

// wires
wire [15:0] in0_msgCount, in0_msgLength;
wire [31:0] in0_payload;
assign in0_msgCount = tdata[63:48];
assign in0_msgLength = tdata[47:32];
assign in0_payload = tdata[31:0];

// logic

assign tready = 1'b1; // the module is always ready since it processes the input in one cycle

always @(posedge clock) begin
    if (reset) begin
        msgCount  <= 16'd0;
        msgLength <= 16'd0;
        isMsgLengthIncomplete = 1'b0;
        valid <= 1'b0;
        payload <= 64'd0;
        keep <= 6'd0;
        divider <= 6'd0;
        last <= 1'b0;
        done <= 1'b0;
    end else begin
        if (tvalid) begin
            if (!msgCount) begin // beginning of package
                msgCount <= in0_msgCount;
                if (!in0_msgCount) begin // the message count informed is zero
                    valid <= 1'b0;
                    payload <= 64'd0;
                    keep <= 6'd0;
                    divider <= 6'd0;
                    last <= 1'b0;
                    done <= 1'b0;
                end else begin
                    msgLength <= in0_msgLength - 4;
                    valid <= 1'b1;
                    payload <= {32'd0, in0_payload};
                    keep <= 6'd4;
                    divider <= 6'd0;
                    last <= 1'b0;
                    done <= 1'b0;
                end
            end else begin // following input data
                // this input data certainly cointans payload
                // may contain message length
                // and does not contain message count
            
                // at least part of the new message length is in new the input data
                if (!msgLength || isMsgLengthIncomplete) begin
                    // partial msgLength may be caused by odd payload length
                    if (isMsgLengthIncomplete) begin
                        msgLength <= {msgLength[15:8], tdata[63:56]} - 16'd7;
                        payload <= {8'd0, tdata[55:0]};
                        keep <= 6'd7;
                    end else begin
                        msgLength <= tdata[63:48] - 6;
                        payload <= {16'd0, tdata[47:0]};
                        keep <= 6'd6;
                    end
                    isMsgLengthIncomplete <= 1'b0;
                    // more of the payload to come in the next cycle(s)
                    valid <= 1'b1;
                    divider <= 6'd0;
                    last <= 1'b0;
                    done <= 1'b0;
                end else if (msgLength >= WIDTH) begin
                    msgLength <= msgLength - WIDTH;
                    valid <= 1'b1;
                    payload <= tdata;
                    keep <= 6'd8;
                    divider <= 6'd0;
                    if (msgLength == WIDTH) begin // end of payload
                        last <= 1'b1;
                        done <= msgCount == 16'd1;
                        msgCount <= msgCount - 1;
                    end else begin
                        last <= 1'b0;
                        done <= 1'b0;
                    end
                    last <= (msgLength == WIDTH);
                    done <= 1'b0;
                end else begin // msgLength < WIDTH
                    if (msgCount == 16'd1) begin
                        done <= 1'b1;
                        keep <= msgLength[5:0];
                        divider <= 6'd0;
                        msgLength <= 16'd0;
                        case (msgLength)
                            1: begin
                                payload <= {56'd0, tdata[63:56]};
                            end
                            2 : begin
                                payload <= {48'd0, tdata[63:48]};
                            end
                            3 : begin
                                payload <= {40'd0, tdata[63:40]};
                            end
                            4 : begin
                                payload <= {32'd0, tdata[63:32]};
                            end
                            5 : begin
                                payload <= {24'd0, tdata[63:24]};
                            end
                            6 : begin
                                payload <= {16'd0, tdata[63:16]};
                            end
                            7 : begin
                                payload <= { 8'd0, tdata[63:08]};
                            end
                        endcase
                    end else begin
                        done <= 1'b0;
                        case (msgLength)
                            1: begin
                                keep <= 6'd6;
                                divider <= 6'd5;
                                payload <= {16'd0, tdata[63:56], tdata[39:0]};
                                msgLength <= tdata[55:40] - 16'd5;
                            end
                            2 : begin
                                keep <= 6'd6;
                                divider <= 6'd4;
                                payload <= {16'd0, tdata[63:48], tdata[31:0]};
                                msgLength <= tdata[47:32] - 16'd4;
                            end
                            3 : begin
                                keep <= 6'd6;
                                divider <= 6'd3;
                                payload <= {16'd0, tdata[63:40], tdata[23:0]};
                                msgLength <= tdata[39:24] - 16'd3;
                            end
                            4 : begin
                                keep <= 6'd6;
                                divider <= 6'd2;
                                payload <= {16'd0, tdata[63:32], tdata[15:0]};
                                msgLength <= tdata[31:16] - 16'd2;
                            end
                            5 : begin
                                keep <= 6'd6;
                                divider <= 6'd1;
                                payload <= {16'd0, tdata[63:24], tdata[7:0]};
                                msgLength <= tdata[23:8] - 16'd1;
                            end
                            6 : begin
                                keep <= 6'd6;
                                divider <= 6'd0;
                                payload <= {16'd0, tdata[63:16]};
                                msgLength <= tdata[15:0];
                            end
                            7 : begin
                                keep <= 6'd7;
                                divider <= 6'd0;
                                payload <= {8'd0, tdata[63:8]};
                                msgLength <= {tdata[7:0], 8'd0};
                                isMsgLengthIncomplete <= 1'b1;
                            end
                        endcase
                    end
                    msgCount <= msgCount - 1;
                    valid <= 1'b1;
                    last <= 1'b1;
                end
            end
        end else begin // !tvalid
            valid <= 1'b0;
            payload <= 64'd0;
            keep <= 6'd0;
            divider <= 6'd0;
            last <= 1'b0;
            done <= 1'b0;
        end
    end
end

endmodule
