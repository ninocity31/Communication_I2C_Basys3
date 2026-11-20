# Board 1 — Master

- `project/`: full Vivado 2019.1 project and SDK 2019.1 workspace (application `Communication_I2C_Master`, `master.c`)
- `vivado/`: block design script and sources (same as board 2)
- `bitstream/`: exported hardware and bitstream (same as board 2)
- `sdk_src/`: `master.c`

Sends a frame of 4 bytes to board 2 over I2C every 0.5 s, and one line to the PC over UART. See the [main README](../README.md).
