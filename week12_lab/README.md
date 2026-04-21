# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Group 12
Haolin Yu
Christian Jensen

## Summary

Implement two versions of a simple FSM: one using one-hot coded, and one using binary.

## Lab Questions

### Compare and contrast One Hot and Binary encodings

One-hot encodings are simpler to code, but become unwieldy and complicated at larger sizes. Binary encodings are more complicated to code, but scale well to larger sizes.

### Which method did your team find easier, and why?

The one-hot encoded method was more intuitive, however the binary method would be preferable in all but the simplest cases. For practical applications the binary encoding seems more effective.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

One hot encoding, particularly for FMS that requires several states, makes poor use of the available space. Binary encoding makes better use of space by limiting the number of circuits (D flip-flops) that are required.