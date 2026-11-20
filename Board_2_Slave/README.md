# Board 2 — Slave

- `project/`: full Vivado 2019.1 project and SDK 2019.1 workspace (application `Communication_I2C_Master`, `slave.c`)
- `vivado/`: block design script and sources (same as board 1)
- `bitstream/`: exported hardware and bitstream (same as board 1)
- `sdk_src/`: `slave.c`

Receives the frames of board 1 at I2C address `0x42` and shows them on the LEDs and the display. See the [main README](../README.md).
