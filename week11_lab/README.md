# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

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

Create two types of counters as examples of how to achieve the same result. One is a simple Ripple Counter with T-flipflops (this version is considered more efficient). The other is a modulo counter built from D-latches, adders, and a comparator. One of the goals of this lab was to illustrate the potential comparative cost (both financially, and in terms of size) of a modulo based counter versus other types.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The frequency of the signal is defined by the full period, meaning that it counts two low-to-high occurrences. This causes the clocks to be divided by twice the count.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

The ring counter's output goes to all 1s on the first clock cycle because the values are shifted through the outputs with each clock 'pulse'. The initialization of the system causes 1s in the initial output when it receives the first high signal.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

The width of the ring counter is dependent upon the frequency of the input. Since we have been presuming a 100MHz input, the ring counter would require a width of 1000 in order to get an ~1kHz output
