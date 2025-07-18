# 🧠 FromNandToTetris

Welcome to my **From Nand to Tetris** journey — a hands-on deep dive into the foundations of computer systems. This repository contains my completed projects from the Nand2Tetris course, where I built a modern computer from scratch using logic gates, HDL, assembly language, and more.

---

## 📚 Course Overview

The [Nand2Tetris](https://www.nand2tetris.org/) course (by Noam Nisan and Shimon Schocken) teaches how to construct a full computer system — hardware and software — from first principles.

### 👨‍💻 My Progress

| Project | Description                                | Status |
|---------|--------------------------------------------|--------|
| 1       | Logic Gates (And, Or, Not, Mux, DMux, etc.) | ✅     |
| 2       | Arithmetic Chips (HalfAdder, FullAdder, ALU)| ✅     |
| 3       | Sequential Logic (Registers, Counters)     | ✅     |
| 4       | Memory (RAM, PC, Memory)                   | ✅     |
| 5       | Computer Architecture (CPU, Memory-Mapped I/O) | ✅  |
| 6       | Assembler in C++ (Hack Assembly → Binary)  | ✅     |

---

## 🛠️ Tech Stack

- **Hardware**: HDL (Hardware Description Language)
- **Software**: Hack Assembly Language
- **Assembler**: C++ implementation
- **Tools**: Nand2Tetris Hardware & CPU Emulator

---

## 🧩 Key Concepts

- Boolean Logic & Binary Arithmetic  
- Combinational & Sequential Circuits  
- Two's Complement & ALU Design  
- Memory Hierarchy & Program Counters  
- Von Neumann Architecture  
- Assembly Language & Instruction Decoding  
- Symbolic to Binary Translation (Assembler)

---

## 🚀 Getting Started

To explore or test any HDL project:

1. Download the [Nand2Tetris software tools](https://www.nand2tetris.org/software).
2. Open the `HardwareSimulator` or `CPUEmulator`.
3. Load the `.hdl` or `.asm` files from respective project folders.
4. Run the built-in test scripts.

To run the assembler:

```bash
# Compile the C++ Assembler
g++ -o Assembler Project6/Assembler.cpp

# Run it on a .asm file
./Assembler Project6/Fill.asm
