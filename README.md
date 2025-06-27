> [!NOTE]
> This project is under construction!

### RISC-V architecture CPU
A Verilog/SystemVerilog-based single-cycle RISC-V CPU core designed for functional simulation and FPGA realization. Implements a subset of the RV32I instruction set, executing one instruction per clock cycle.

**Tools Used**

`Visual Studio Code`
`Vivado`
`Verilog/SystemVerilog`
`Verilator`
`cocotb`

---

#### **Learning Objectives**

- Implement a single-cycle RISC-V CPU with a complete datapath and control unit in SystemVerilog
- Develop ALU, register file, and memory interfaces conforming to the RV32I instruction set
- Design instruction decode and control logic to support arithmetic, memory, and branching operations
- Verify core functionality through simulation with Verilator and Cocotb, and waveform analysis in GTKWave

--- 

#### **Project Structure**
- `src/` – contains SystemVerilog HDL code that describes the system's core logic at the RTL level
- `tb/` – contains all the cocotb testbenches
- `fpga/` – contains files for FPGA implementation of the core
- `packages/` - will eventually contain config file