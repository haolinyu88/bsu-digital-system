# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Group 12
Haolin Yu
Christian Jensen

## Summary

This lab came in two parts: first, the implementation and demonstration of a D-latch; second, the implementation and demonstration of a basic memory circuit building upon the multiplexers, and demultiplexers from Lab 8.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

It is possible to use structural Verilog to create a facsimile of a specific case, however this method cannot be used to address all cases. One requires behavioral Verilog in order to properly implement a latch through synchronous design. 

### What is the meaning of always @(*) in a sensitivity block?

In the context of a sensitivity block 'always @(*)' uses the wildcard value (*) to direct the system to accept any input signals/variables within the context of that block. This can prevent errors due to a missing a variable that otherwise would have to be specified.

### What importance is memory to digital circuits?

Memory is fundamentally important to the digital circuits we use today. Retaining information, and controlling when it is passed to another part of the circuit provides us with the building blocks to create more complex systems. Login systems are one example of this.
