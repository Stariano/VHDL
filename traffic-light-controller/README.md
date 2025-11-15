# Traffic Light Controller (Project 4)

This project is a FSM that sequences vehicle lights (green/yellow/red) and counts cycles with a button-triggered counter, mirroring an intersection controller.

## Contents
- `project folder/P4.vhd` encodes the states `idle`, `waiting_y`, `Sy`, `Sr`, and the counter logic that sets `enable` flags and the `EoC` pulses for transitions.
- The `project folder` also keeps all Quartus flow outputs (`*.rpt`, `*.map`, `*.summary`, `*.pof`, `*.qsf`) plus waveform files showing the timing of signals.
- `P4_IgnacioCortina_StavrosEbied_NicolasLemus.pdf` is the team report that describes how the FSM meets the lab requirements.

## How to review
- Load `project folder` into Quartus or your preferred VHDL build tool.
- Use the waveform files to see the timed transitions and confirm the `button` edge detector and counter interplay.
