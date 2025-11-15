# Rock-Paper-Scissors FSM (Lab 2)

This lab implements a simple state machine that compares encoded player inputs (`010`=rock, `001`=paper, `100`=scissors) and outputs the two outcome signals `O1`, `O2`.

## Files to check
- `Lab2.vhd` is the main entity `Lab2_TC` with the case statements that translate the 3-bit encodings into the game result.
- The `.rpt`/`.summary`/`.flow` files are Quartus artifacts created after synthesis; they track timing, fitting, and pin assignments.
- `CT_lab_final_report.pdf` documents the lab goals and how the team verified the FSM.

## How to run
- Open the project in Quartus, assign the pins if necessary, and simulate `Lab2_TC` with binary player inputs.
- Refer to the `.fit.summary` and `.tan.summary` files to show that the design met timing.
