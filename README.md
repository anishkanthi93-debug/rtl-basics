# rtl-basics

First Verilog exercises: a 4-bit counter with async active-low reset and enable, a 2:1 mux, and a testbench.

## Run
    iverilog -o sim counter.v mux2.v tb.v
    vvp sim
    surfer wave.vcd

## Result
Counter holds at 0 in reset, counts 0 to 15 and wraps, and freezes when enable is low.
