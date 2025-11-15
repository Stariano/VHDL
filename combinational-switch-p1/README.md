# Combinational Switch Circuit (Practica 1)

This project implements the first VHDL lab: a small combinational circuit that combines `XNOR`, `AND`, and a selector to produce output `z1`.

## Key files
- `p1./P1.vhd` defines the entity/architecture with ports `a`, `b`, `c`, `d`, and `z1`, plus the `CASE` statement used to select data from different inputs.
- `p1./P1.vwf` (waveform) and the Quartus reports (`*.rpt`, `*.summary`) record what happened during synthesis and simulation.
- `p1./Students.docx` includes the lab pairing info and any narrative needed for the submission.

## Running/simulating
- Import `p1.` into Quartus or open `P1.vhd` in any VHDL-capable IDE.
- Use the waveform file to visualize how the `CASE` logic responds to `c`/`d` while `s1`/`s2` hold the logical combos of `a` and `b`.
