# 4x4 Wallace Tree Multiplier using CSA and CLA

## Overview

This project implements a 4x4 Wallace Tree Multiplier in Verilog HDL using Carry Save Adders (CSA) for partial product reduction and a Carry Lookahead Adder (CLA) for final addition.

The design demonstrates efficient multiplier architecture commonly used in high-speed digital systems and VLSI designs.

## Features

* Verilog HDL implementation
* Wallace Tree reduction structure
* Carry Save Adder (CSA) based compression
* Carry Lookahead Adder (CLA) final stage
* Functionally verified using Icarus Verilog and GTKWave

## Files

* `full_adder.v` – 1-bit Full Adder
* `csa_8bit.v` – 8-bit Carry Save Adder
* `cla_4bit.v` – 4-bit Carry Lookahead Adder
* `cla_8bit.v` – 8-bit Carry Lookahead Adder
* `wallace_4x4.v` – Top-level Wallace Tree Multiplier
* `tb_wallace_4x4.v` – Testbench

## Sample Results

| A  | B  | Product |
| -- | -- | ------- |
| 0  | 0  | 0       |
| 2  | 3  | 6       |
| 5  | 5  | 25      |
| 10 | 10 | 100     |
| 15 | 15 | 225     |

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

## Author

Faraaz Shaikh
B.Tech Electronics Engineering (VLSI Design & Technology)
