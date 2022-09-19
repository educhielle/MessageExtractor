# MessageExtractor

This is a simple project to extract the payloads of packages sent over a 64-bit AXIS stream interface.

Each package contains three types of information: message count, message length, and payload.
The package starts with a 2-byte message count which informs how many messages there are.
The first 2 bytes of each message contain the message length, and the remaining bytes contain the payload.
The payload size is determined by the message length.

```
  MSG_COUNT MSG_LEN_1  PAYLOAD_1 MSG_LEN_2  PAYLOAD_2  ...  MSG_LEN_N  PAYLOAD_N 
---------------------------------------------------------------------------------
|  2 bytes | 2 bytes | variable | 2 bytes | variable | ... | 2 bytes | variable |
---------------------------------------------------------------------------------
```

This repository contains software and hardware implementations.

The project contains two design blocks: 1) Extractor and 2) Binder.

1) The Extractor receives a 64-bit input data that may contain a message count and/or a message length, and certainly cointains some payload information.
From that, it extracts and outputs the payload information.

2) The Binder takes the partial payload information provided by the Extractor each clock and combines it to form the complete payload.
It outputs the payload once it is complete.

A top module called MessageExtractor does the interconnection.

Operating range:
- Message count: the MessageExtractor supports any 2-byte message count, i.e., the message count range is [0 to 65535].
- Message length: the payload size must be from 8 bytes to 65535 bytes ([8, 65535]).
- No fail safe mechanism is implemented for out of range operation.
