# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

# Names
Group 12
Haolin Yu
Christian Jensen
#Summary
In this lab we were directed to implement a half-subtractor, 1’s Complement addition, and a 2’s
Complement converter. The half-subtractor drove home the difficulties of borrowing. The 1’s
Complement addition displayed the difficulty and complexity introduced by an end around carry.
And the 2’s converter built upon our understanding of the challenges of adders.

#1 The half adder includes a value for carries (values that overflow into the next digit’s place),
while the subtractor has to address borrowing (where values from higher digit places are drawn
from).
#2 The end around carry is difficult to implement as it requires a circuit that can account for both
cases: where a carry-out is 1, and where a carry-out is 0. In a sense, this requires the circuit to
perform the calculations twice: once to determine what the carry-out is, and once more to
generate the final value once the end carry has been introduced.
3# The 2’s complement ‘edge case’ defines the edge of the 2’s complements effectiveness
(ability to describe numbers accurately). Numbers in 2’s complement range from -8 to +7,
because while -8 may be written accurately ( 1000 ), it’s complement (+8) cannot be properly
written in four binary digits.
