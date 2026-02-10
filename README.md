# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

Summarize your learnings from the lab here.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
Because each edge is adjacent to their opposite edge.Like top to bootom, right to left.
logically, they only casue 1 bit different, which mean they can be neibior, and we can circle it on K-map.


### Why are the names Sum of Products and Products of Sums?
SOP is mean each combination of input can output to 1, which is connect with AND gate and OR gate to ouput.
POS is mean combination of input can ouput to 0 with complement pattern, which is base on the SOP and put some invetor. Depend on the moore law, the result will appear with OR gate for each input combination and connect with AND gate to output.


### Open the test.v file – how are we able to check that the signals match using XOR?

