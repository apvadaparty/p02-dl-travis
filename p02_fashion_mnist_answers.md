# deep-learning-jhu-cs-482-682

## Eric Carlson, Alex Bocchieri, Annapurna Vadaparty

# Answers

1. Hyperparameter change: none yet, it is simply running both datasets with the given hyperparameters (10 epochs, 0.01 learning rate, sgd optimizer). 

MNIST with 10 epochs: 
![Alt text](q1/Screenshot%202018-03-05%2022.52.37.png?raw=true "Title")
Fashion MNIST with 10 epochs: 
![Alt text](relative/path/to/img.jpg?raw=true "Title")

2. Hyperparameter change: doubling number of epochs; comparing 10 epoch runs of MNIST & Fashion with 20 epoch runs of MNIST & Fashion. 

3. Hyperparameter change: the learning rates being tested are 0.001, 0.01, and 0.1. 

4. Hyperparameter change: the optimizers being tested are SGD, Adam, and Rmsprop. 

5. Hyperparameter change: a dropout layer is used, and the dropout rates (probability of a randomly selected weight being set to 0) tested are 0, 0.25, 0.5, 0.9, and 1. 0 means that no weights are set to 0, and 1 means all weights are set to 0. 

6. Hyperparameter change: the batch sizes tested are 256, 32, and 2048.

MNIST with 1/8 batch size: 
![Alt text](q6/Screen%20Shot%202018-03-05%20at%2011.06.10%20PM.png?raw=true "Title")

7. Hyperparameter change: the number of output channels from the convolution layer (and input to the first Linear layer) are modified. The number of output channels tested are 10, 5, and 20. 

8. Hyperparameter change: A batch normalization layer is added to normalize after the first convolutional layer. 

9. N/A

10. Compare 9 with 10 and explain what happened: 

The accuracy for 10 is lower than for 9 because in 10, some weights are being zeroed first. This means that in 10, it is normalizing on an artificially zeroed set of weights, so the new weights will be neither 0 nor what is calculated from the data, but instead a non-meaningful value in between. Then these non-meaningful weights will be used for the next pass through the network, and will not be as helpful for classification. In 9, the dropout is done after normalization. This means that some weights are zero after normalization, but the ones that remain are those that have been calculated from the data (not normalized with zeros). This explains why the accuracy is higher for 9. 

11. Hyperparameter change: an extra convolutional layer was added with 80 input channels and 40 output channels; the layer before was modified to fit these dimensions by taking 20 input channels and giving 80 output channels. 

12. Hyperparameter change: The last fully connected layer was removed.

We removed this layer because the goal of a fully connected layer after a convolution is to capture nonlinear patterns in data after it has gone through the convolutional layer, and it was unclear whether the second layer was finding any additional helpful patterns to increase accuracy. The deletion was made in order to speed up the network if the second layer was not helpful. 


