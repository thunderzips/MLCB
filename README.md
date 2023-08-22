# Machine-learning-circuit-block

The idea of the circuit is to have a basic peice of hardware available that should help in integrating ML in almost any logic circuit.

In this repository, a simple such unit has been created in circuitverse.org (for easier visualisation purpose). Here the basic block can only predict upto 4 predictions and keeps improving it's guesses. The circuit initially predicts the value of an unknown bit (0 or 1). The user tells it if it's right or not. The circuit keeps updating the information and starts predicting the value more certainly.

When taken by the face value, this might look like redundant, but when multiple such simple circuits are grouped together with inputs being outputs of certain circuits, they end up giving birth to a NN like peice of hardware.
(Yet to be implemented)

The output is represented by the bulb (single), 0--> OFF, 1--> ON
The user must press the buttons yes or no depending upon whether the value shown is correct or wrong.

Currently the circuit is limited to three guesses only, after three guesses, it'll reset to the initial state.


simulator: circuitverse.org
