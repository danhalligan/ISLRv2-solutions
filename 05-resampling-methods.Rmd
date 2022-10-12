# Resampling Methods

## Conceptual

### Question 1

> Using basic statistical properties of the variance, as well as single-
> variable calculus, derive (5.6). In other words, prove that $\alpha$ given by
> (5.6) does indeed minimize $Var(\alpha X + (1 − \alpha)Y)$.

### Question 2

> We will now derive the probability that a given observation is part of a
> bootstrap sample. Suppose that we obtain a bootstrap sample from a set of n
> observations.
>
> a. What is the probability that the first bootstrap observation is _not_ the
>    $j$th observation from the original sample? Justify your answer.
>
> b. What is the probability that the second bootstrap observation is _not_ the
>    $j$th observation from the original sample?
>
> c. Argue that the probability that the $j$th observation is _not_ in the
>    bootstrap sample is $(1 − 1/n)^n$.
>
> d. When $n = 5$, what is the probability that the $j$th observation is in the
>    bootstrap sample?
>
> e. When $n = 100$, what is the probability that the $j$th observation is in
>    the bootstrap sample?
>
> f. When $n = 10,000$, what is the probability that the $j$th observation is
>    in the bootstrap sample?
>
> g. Create a plot that displays, for each integer value of $n$ from 1 to
>    100,000, the probability that the $j$th observation is in the bootstrap
>    sample. Comment on what you observe.
>
> h. We will now investigate numerically the probability that a bootstrap
>    sample of size $n = 100$ contains the $j$th observation. Here $j = 4$. We
>    repeatedly create bootstrap samples, and each time we record whether or not
>    the fourth observation is contained in the bootstrap sample.
>    
>     ```r
>     > store <- rep (NA, 10000)
>     > for (i in 1:10000) {
>         store[i] <= sum(sample(1:100, rep = TRUE) == 4) > 0
>     }
>     > mean(store)
>     ```
>     
>     Comment on the results obtained.

### Question 3

> 3. We now review $k$-fold cross-validation.
>
> a. Explain how $k$-fold cross-validation is implemented.
>
> b. What are the advantages and disadvantages of $k$-fold cross-validation
>    relative to:
>     i. The validation set approach?
>     ii. LOOCV?

### Question 4

> Suppose that we use some statistical learning method to make a prediction for
> the response $Y$ for a particular value of the predictor $X$. Carefully
> describe how we might estimate the standard deviation of our prediction.

## Applied

### Question 5

> In Chapter 4, we used logistic regression to predict the probability of
> `default` using `income` and `balance` on the `Default` data set. We will now
> estimate the test error of this logistic regression model using the
> validation set approach. Do not forget to set a random seed before beginning
> your analysis.
>
> a. Fit a logistic regression model that uses `income` and `balance` to predict
>    `default`.
>
> b. Using the validation set approach, estimate the test error of this model.
>    In order to do this, you must perform the following steps:
>     i. Split the sample set into a training set and a validation set.
>     ii. Fit a multiple logistic regression model using only the training
>     observations.
>     iii. Obtain a prediction of default status for each individual in
>     the validation set by computing the posterior probability of
>     default for that individual, and classifying the individual to
>     the `default` category if the posterior probability is greater
>     than 0.5.
>     iv. Compute the validation set error, which is the fraction of
>     the observations in the validation set that are misclassified.
>
> c. Repeat the process in (b) three times, using three different splits of the
>    observations into a training set and a validation set. Comment on the
>    results obtained.
>
> d. Now consider a logistic regression model that predicts the probability of
>    `default` using `income`, `balance`, and a dummy variable for `student`.
>    Estimate the test error for this model using the validation set approach.
>    Comment on whether or not including a dummy variable for `student` leads to
>    a reduction in the test error rate.

### Question 6

> We continue to consider the use of a logistic regression model to predict the
> probability of `default` using `income` and `balance` on the `Default` data
> set. In particular, we will now compute estimates for the standard errors of
> the `income` and `balance` logistic regression coefficients in two different
> ways: (1) using the bootstrap, and (2) using the standard formula for
> computing the standard errors in the `glm()` function. Do not forget to set a
> random seed before beginning your analysis.
>
> a. Using the `summary()` and `glm()` functions, determine the estimated
>    standard errors for the coefficients associated with `income` and
>    `balance` in a multiple logistic regression model that uses both
>    predictors.
>
> b. Write a function, `boot.fn()`, that takes as input the `Default` data set
>    as well as an index of the observations, and that outputs the coefficient
>    estimates for `income` and `balance` in the multiple logistic regression
>    model.
>
> c. Use the `boot()` function together with your `boot.fn()` function to
>    estimate the standard errors of the logistic regression coefficients for
>    income and balance.
>
> d. Comment on the estimated standard errors obtained using the `glm()`
>    function and using your bootstrap function.

### Question 7

> In Sections 5.3.2 and 5.3.3, we saw that the `cv.glm()` function can be used
> in order to compute the LOOCV test error estimate. Alternatively, one could
> compute those quantities using just the `glm()` and `predict.glm()`
> functions, and a for loop. You will now take this approach in order to
> compute the LOOCV error for a simple logistic regression model on the `Weekly`
> data set. Recall that in the context of classification problems, the LOOCV
> error is given in (5.4).
>
> a. Fit a logistic regression model that predicts `Direction` using `Lag1` and
>    `Lag2`.
>
> b. Fit a logistic regression model that predicts `Direction` using `Lag1` and
>    `Lag2` _using all but the first observation_.
>
> c. Use the model from (b) to predict the direction of the first
>    observation. You can do this by predicting that the first observation will
>    go up if $P($`Direction="Up" | Lag1 , Lag2`$) > 0.5$. Was this observation
>    correctly classified?
>
> d. Write a for loop from $i = 1$ to $i = n$, where $n$ is the number of
>    observations in the data set, that performs each of the following steps:
>     i.   Fit a logistic regression model using all but the $i$th observation
>          to predict `Direction` using `Lag1` and `Lag2` .
>     ii.  Compute the posterior probability of the market moving up
>          for the $i$th observation.
>     iii. Use the posterior probability for the $i$th observation in order
>          to predict whether or not the market moves up.
>     iv.  Determine whether or not an error was made in predicting the
>          direction for the $i$th observation. If an error was made, then
>          indicate this as a 1, and otherwise indicate it as a 0.
>
> e. Take the average of the $n$ numbers obtained in (d) in order to obtain the
>    LOOCV estimate for the test error. Comment on the results.

### Question 8

> We will now perform cross-validation on a simulated data set.
>
> a. Generate a simulated data set as follows:
>     
>     ```r
>     > set.seed(1)
>     > x=rnorm(100)
>     > y=x-2*x^2+rnorm(100)
>     ```
>    
>    In this data set, what is $n$ and what is $p$? Write out the model
>    used to generate the data in equation form.
>
> b. Create a scatterplot of $X$ against $Y$. Comment on what you find.
>
> c. Set a random seed, and then compute the LOOCV errors that result from
>    fitting the following four models using least squares:
>     i.   $Y = \beta_0 + \beta_1 X + \epsilon$
>     ii.  $Y = \beta_0 + \beta_1 X + \beta_2 X^2 + \epsilon$
>     iii. $Y = \beta_0 + \beta_1 X + \beta_2 X^2 + \beta_3 X^3 + \epsilon$
>     iv.  $Y = \beta_0 + \beta_1 X + \beta_2 X^2 + \beta_3 X^3 + \beta_4 X^4 + \epsilon$.
>
>    Note you may find it helpful to use the `data.frame()` function
>    to create a single data set containing both $X$ and $Y$.
>
> d. Repeat (c) using another random seed, and report your results.
>    Are your results the same as what you got in (c)? Why?
>
> e. Which of the models in (c) had the smallest LOOCV error? Is this what you
>    expected? Explain your answer.
>
> f. Comment on the statistical significance of the coefficient estimates
>    that results from fitting each of the models in (c) using least squares.
>    Do these results agree with the conclusions drawn based on the
>    cross-validation results?

### Question 9

> We will now consider the `Boston` housing data set, from the `ISLR2`
> library.
>
> a.  Based on this data set, provide an estimate for the population mean of
>     `medv`. Call this estimate $\hat\mu$.
>
> b.  Provide an estimate of the standard error of $\hat\mu$. Interpret this
>     result.
>
>     _Hint: We can compute the standard error of the sample mean by
>     dividing the sample standard deviation by the square root of the number of
>     observations._
>
> c.  Now estimate the standard error of $\hat\mu$ using the bootstrap. How does
>     this compare to your answer from (b)?
>
> d.  Based on your bootstrap estimate from (c), provide a 95% confidence
>     interval for the mean of `medv`. Compare it to the results obtained using
>     `t.test(Boston$medv)`.
>
>     _Hint: You can approximate a 95% confidence interval using the
>     formula $[\hat\mu − 2SE(\hat\mu),  \hat\mu + 2SE(\hat\mu)].$_
>
> e.  Based on this data set, provide an estimate, $\hat\mu_{med}$, for the
>     median value of `medv` in the population.
>
> f.  We now would like to estimate the standard error of $\hat\mu_{med}$.
>     Unfortunately, there is no simple formula for computing the standard error
>     of the median. Instead, estimate the standard error of the median using
>     the bootstrap. Comment on your findings.
>
> g.  Based on this data set, provide an estimate for the tenth percentile of
>     `medv` in Boston census tracts. Call this quantity $\hat\mu_{0.1}$. (You
>     can use the `quantile()` function.)
>
> h.  Use the bootstrap to estimate the standard error of $\hat\mu_{0.1}$.
>     Comment on your findings.
