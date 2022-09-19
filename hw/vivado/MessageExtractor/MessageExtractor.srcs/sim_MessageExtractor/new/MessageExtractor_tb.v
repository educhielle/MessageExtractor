// Author: Eduardo Chielle

module MessageExtractor_tb();

localparam CLOCK_PERIOD = 10;
localparam LOG_BITS = 8;
localparam N_BITS = 1 << LOG_BITS;

reg clock;
reg reset;

reg tvalid;
wire tready;
reg[63:0] tdata;
reg tlast;

wire valid;
wire[N_BITS-1:0] payload;
wire done;

MessageExtractor #(LOG_BITS) messageExtractor(
    clock, reset,
    tvalid, tready, tdata, tlast,
    valid, payload, done
);

always @* #(CLOCK_PERIOD/2) clock <= !clock;

initial begin
    clock = 0;
    reset = 1;
    tvalid = 0;
    #CLOCK_PERIOD;
    
    reset = 0;
    #CLOCK_PERIOD;
    
    tvalid = 1;
    tdata = 64'h0001000801020304;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h05060708090a0b0c;
    tlast = 1;
    #CLOCK_PERIOD;
    
    // ---
    
    tdata = 64'h0002000c12345678;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h9abcdef022222222;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h000d112233445566;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h778899aabbccdd00;
    tlast = 1;
    #CLOCK_PERIOD;
    
    // ---
    
    tdata = 64'h0004000a11223344;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h5566778899aa0008;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h0102030405060708;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h000d112233445566;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h778899aabbccdd00;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h0801020304050607;
    tlast = 0;
    #CLOCK_PERIOD;
    
    tdata = 64'h0800000000000000;
    tlast = 1;
    #CLOCK_PERIOD;
    
    #CLOCK_PERIOD;
    $finish;
end

endmodule