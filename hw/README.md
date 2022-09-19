**MessageExtractor - Hardware implementation**

The hardware implementation is just a translation from the algorithm to work in hardware. Some adjusts had to be made in order for it to work properly, but the design has not been further optimized.

The source codes are available at the 'src' directory.
There is also a Vivado 2017.3 project under the 'vivado' directory.

There are three modules: 1) Extractor, 2) Binder, and 3) MessageExtractor.

Extractor extracts the payload, Binder merges the parts, and MessageExtractor is the top.

MessageExtractor:
```
               __________________ 
      clock --| MessageExtractor |-- tready
      reset --|                  |-- valid
     tvalid --|                  |-- payload[N_BITS-1:0]
tdata[63:0] --|                  |-- done
      tlast --|__________________|
```

Internals (input -> Extractor -> Binder -> output):
```
               ___________               ________
      clock --| Extractor |--- valid ---| Binder |-- valid
      reset --|           |-- payload --|        |-- payload[N_BITS-1:0]
     tvalid --|           |---- keep ---|        |-- done
tdata[63:0] --|           |-- divider --|        |
      tlast --|           |--- last ----|        |
              |           |--- done ----|________|
              |___________|------------------------- tready
```
