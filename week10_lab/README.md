# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Group 12
Haolin Yu
Christian Jensen

## Summary

Build three edge sensitive circuits: a D-Flip Flop, a JK-Flip Flop, and a T-Flip Flop. Understand the difference between level-sensitive, and edge-sensitive circuits.

## Lab Questions

### What is difference between edge and level sensitive circuits?

Edge sensitive circuits control when information is held: in a positive edge, information is only recorded when the Clock value goes from 0 to 1. Essentially, the system state is sampled in an edge sensitive circuit, while in a level sensitive circuit the state is subject to any changes in the circuit while the controlling signal is on.

### Why is it important to declare initial state?

Declaring the initial state removes the possibility that pieces of code remaining in the FPGA will interfere with the program. This is particularly important as there is no means to easily test what the residual state of the circuit is.

### What do edge sensitive circuits let us build?

Edge sensitive circuits allow for more complex circuits as they provide the user/system with a greater degree of control over what information is retained, and/or passed along to other circuits. The example provided in the lab description focuses on counting: a level sensitive counter would count for as long as the circuit was asserted, an edge-sensitive counter counts at reliable intervals. 