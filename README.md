# VHDL Labs

Each folder holds a Quartus-style project with the `.vhd` sources, waveform files, compilation reports, and `.pof`/`.qsf` files generated during synthesis.

## `combinational-switch-p1`
- The `p1.` folder includes `P1.vhd`, the VWF waveform `P1.vwf`, and the student explanations captured in `Students.docx`.
- The entity `P1` implements a combinational block that combines `XNOR`, `AND`, and a small `CASE` statement over the inputs `c`/`d` to drive output `z1` per the lab sheet.

## `rock-paper-scissors-fsm`
- This lab implements a `Lab2_TC` entity (rock/paper/scissors arbitration) that maps button encodings (`010`, `001`, `100`) into `O1`/`O2` results while also reporting ties and invalid inputs.
- Supporting files include `Lab2.vhd`, simulation reports (`.rpt`), timing summaries, and the final write-up `CT_lab_final_report.pdf`.

## `traffic-light-controller`
- The `project folder` subdirectory contains `P4.vhd` plus the Quartus flow artifacts (post-fit reports, `.pof`, `.qsf`, and `Waveform1.vwf`).
- `P4` is a small state machine that sequences green/yellow/red lights, counts via `counter`, and leverages button-edged triggering with `enable` flags, which makes it easy to demo on lab hardware.