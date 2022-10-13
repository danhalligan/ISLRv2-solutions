# Deep Learning

## Conceptual

### Question 1

> Consider a neural network with two hidden layers: $p = 4$ input units, 2 units
> in the first hidden layer, 3 units in the second hidden layer, and a single
> output.
>
> a. Draw a picture of the network, similar to Figures 10.1 or 10.4.
>
> b. Write out an expression for $f(X)$, assuming ReLU activation functions. Be
> as explicit as you can!
>
> c. Now plug in some values for the coefficients and write out the value of
> $f(X)$.
>
> d. How many parameters are there?

### Question 2

> Consider the _softmax_ function in (10.13) (see also (4.13) on page 141)
> for modeling multinomial probabilities.
>
> a. In (10.13), show that if we add a constant $c$ to each of the $z_l$, then
> the probability is unchanged.
>
> b. In (4.13), show that if we add constants $c_j$, $j = 0,1,...,p$, to each of
> the corresponding coefficients for each of the classes, then the predictions
> at any new point $x$ are unchanged.

> This shows that the softmax function is _over-parametrized_. However,
> regularization and SGD typically constrain the solutions so that this is not a
> problem.

### Question 3

> Show that the negative multinomial log-likelihood (10.14) is equivalent to
> the negative log of the likelihood expression (4.5) when there are $M = 2$
> classes.

### Question 4

> Consider a CNN that takes in $32 \times 32$ grayscale images and has a single
> convolution layer with three $5 \times 5$ convolution filters (without
> boundary padding).
>
> a. Draw a sketch of the input and first hidden layer similar to Figure 10.8.
>
> b. How many parameters are in this model?
>
> c. Explain how this model can be thought of as an ordinary feed-forward
> neural network with the individual pixels as inputs, and with constraints on
> the weights in the hidden units. What are the constraints?
>
> d. If there were no constraints, then how many weights would there be in the
> ordinary feed-forward neural network in (c)?

### Question 5

> In Table 10.2 on page 433, we see that the ordering of the three methods with
> respect to mean absolute error is different from the ordering with respect to
> test set $R^2$. How can this be?

## Applied

### Question 6

> Consider the simple function $R(\beta) = sin(\beta) + \beta/10$.
>
> a. Draw a graph of this function over the range $\beta \in [−6, 6]$.
>
> b. What is the derivative of this function?
>
> c. Given $\beta^0 = 2.3$, run gradient descent to find a local minimum of
> $R(\beta)$ using a learning rate of $\rho = 0.1$. Show each of 
> $\beta^0, \beta^1, ...$ in your plot, as well as the final answer.
>
> d. Repeat with $\beta^0 = 1.4$.

### Question 7

> Fit a neural network to the `Default` data. Use a single hidden layer with 10
> units, and dropout regularization. Have a look at Labs 10.9.1–-10.9.2 for
> guidance. Compare the classification performance of your model with that of
> linear logistic regression.

### Question 8

> From your collection of personal photographs, pick 10 images of animals (such
> as dogs, cats, birds, farm animals, etc.). If the subject does not occupy a
> reasonable part of the image, then crop the image. Now use a pretrained image
> classification CNN as in Lab 10.9.4 to predict the class of each of your
> images, and report the probabilities for the top five predicted classes for
> each image.

### Question 9

> Fit a lag-5 autoregressive model to the `NYSE` data, as described in the text
> and Lab 10.9.6. Refit the model with a 12-level factor representing the
> month. Does this factor improve the performance of the model?

### Question 10

> In Section 10.9.6, we showed how to fit a linear AR model to the `NYSE` data
> using the `lm()` function. However, we also mentioned that we can "flatten"
> the short sequences produced for the RNN model in order to fit a linear AR
> model. Use this latter approach to fit a linear AR model to the NYSE data.
> Compare the test $R^2$ of this linear AR model to that of the linear AR model
> that we fit in the lab. What are the advantages/disadvantages of each
> approach?

### Question 11

> Repeat the previous exercise, but now fit a nonlinear AR model by "flattening"
> the short sequences produced for the RNN model.

### Question 12

> Consider the RNN fit to the `NYSE` data in Section 10.9.6. Modify the code to
> allow inclusion of the variable `day_of_week`, and fit the RNN. Compute the
> test $R^2$.

### Question 13

> Repeat the analysis of Lab 10.9.5 on the `IMDb` data using a similarly
> structured neural network. There we used a dictionary of size 10,000. Consider
> the effects of varying the dictionary size. Try the values 1000, 3000, 5000,
> and 10,000, and compare the results.
