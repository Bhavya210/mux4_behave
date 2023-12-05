# VHDL 4x1 Multiplexer (lmux) with Test Bench

## Overview
This VHDL code, named `lmux`, represents a 4x1 multiplexer, a digital circuit that selects one of four input signals based on a select line. The code includes both the main implementation and a test bench for verification. The design is intended for use with Xilinx Vivado.

## Files
- **mux4.vhdl:** Contains the behavioral architecture for the 4x1 multiplexer.
- **mux4_tb.vhdl:** The test bench code for the multiplexer, providing stimulus and verifying its functionality.

## Usage
1. Open Xilinx Vivado.
2. Create a new project and add the `mux4.vhdl` and `mux4_tb.vhdl` files to the project.
3. Synthesize, implement, and generate the bitstream for the design.
4. Use Vivado's simulation tools to run the test bench (`mux4_tb`) and verify the functionality of the 4x1 multiplexer.

## Implementation Details
- **Behavioral Architecture:** The `mux4` VHDL code uses a behavioral architecture to describe the functionality of the 4x1 multiplexer.
- **Test Bench:** The `mux4_tb` test bench provides stimulus to the multiplexer and checks the correctness of its output under various conditions.
- **Xilinx Vivado:** The code is designed to be analyzed and implemented using Xilinx Vivado.

## Note
Ensure you have Xilinx Vivado installed to analyze and implement the VHDL code. Customize the code or test bench as needed for your specific requirements. The provided test bench (`mux4_tb`) serves as a valuable tool for verifying the correct operation of the 4x1 multiplexer.
