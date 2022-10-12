# Linear Model Selection and Regularization

## Conceptual

### Question 1

> We perform best subset, forward stepwise, and backward stepwise selection on
> a single data set. For each approach, we obtain $p + 1$ models, containing
> $0, 1, 2, ..., p$ predictors. Explain your answers:
>
> a. Which of the three models with $k$ predictors has the smallest *training*
>    RSS?
>
> b. Which of the three models with $k$ predictors has the smallest *test* RSS?
>
> c. True or False:
>     i. The predictors in the $k$-variable model identified by forward stepwise
>        are a subset of the predictors in the ($k+1$)-variable model identified
>        by forward stepwise selection.
>     ii. The predictors in the $k$-variable model identified by backward stepwise
>        are a subset of the predictors in the $(k+1)$-variable model identified
>        by backward stepwise selection.
>     iii. The predictors in the $k$-variable model identified by backward
>        stepwise are a subset of the predictors in the $(k+1)$-variable model
>        identified by forward stepwise selection.
>     iv. The predictors in the $k$-variable model identified by forward stepwise
>        are a subset of the predictors in the $(k+1)$-variable model identified
>        by backward stepwise selection.
>     v. The predictors in the $k$-variable model identified by best subset are a
>        subset of the predictors in the $(k+1)$-variable model identified by best
>        subset selection.

### Question 2

> For parts (a) through (c), indicate which of i. through iv. is correct.
> Justify your answer.
>
> a. The lasso, relative to least squares, is:
>     i. More flexible and hence will give improved prediction accuracy when its
>       increase in bias is less than its decrease in variance.
>     ii. More flexible and hence will give improved prediction accuracy when its
>       increase in variance is less than its decrease in bias.
>     iii. Less flexible and hence will give improved prediction accuracy when its
>       increase in bias is less than its decrease in variance.
>     iv. Less flexible and hence will give improved prediction accuracy when
>       its increase in variance is less than its decrease in bias.
>
> b. Repeat (a) for ridge regression relative to least squares.
>
> c. Repeat (a) for non-linear methods relative to least squares.

### Question 3

> Suppose we estimate the regression coefficients in a linear regression model
> by minimizing:
>
> $$
> \sum_{i=1}^n\left(y_i - \beta_0 - \sum_{j=1}^p\beta_jx_{ij}\right)^2
>   \textrm{subject to} \sum_{j=1}^p|\beta_j| \le s
> $$
>
> for a particular value of $s$. For parts (a) through (e), indicate
> which of i. through v. is correct. Justify your answer.
>
> a. As we increase $s$ from 0, the training RSS will:
>     i. Increase initially, and then eventually start decreasing in an
>       inverted U shape.
>     ii. Decrease initially, and then eventually start increasing in a U shape.
>     iii. Steadily increase.
>     iv. Steadily decrease.
>     v. Remain constant.
>
> b. Repeat (a) for test RSS.
>
> c. Repeat (a) for variance.
>
> d. Repeat (a) for (squared) bias.
>
> e. Repeat (a) for the irreducible error.

### Question 4

> Suppose we estimate the regression coefficients in a linear regression model
> by minimizing
>
> $$
> \sum_{i=1}^n \left(y_i - \beta_0 - \sum_{j=1}^p\beta_jx_{ij}\right)^2 +
>   \lambda\sum_{j=1}^p\beta_j^2
> $$
>
> for a particular value of $\lambda$. For parts (a) through (e), indicate which
> of i. through v. is correct. Justify your answer.
>
> a. As we increase $\lambda$ from 0, the training RSS will:
>     i. Increase initially, and then eventually start decreasing in an
>     inverted U shape.
>     ii. Decrease initially, and then eventually start increasing in a U shape.
>     iii. Steadily increase.
>     iv. Steadily decrease.
>     v. Remain constant.
>
> b. Repeat (a) for test RSS.
>
> c. Repeat (a) for variance.
>
> d. Repeat (a) for (squared) bias.
>
> e. Repeat (a) for the irreducible error.

### Question 5

> It is well-known that ridge regression tends to give similar coefficient
> values to correlated variables, whereas the lasso may give quite different
> coefficient values to correlated variables. We will now explore this property
> in a very simple setting.
>
> Suppose that $n = 2, p = 2, x_{11} = x_{12}, x_{21} = x_{22}$. Furthermore,
> suppose that $y_1 + y_2 =0$ and $x_{11} + x_{21} = 0$ and
> $x_{12} + x_{22} = 0$, so that the estimate for the intercept in a least
> squares, ridge regression, or lasso model is zero: $\hat{\beta}_0 = 0$.
>
> a. Write out the ridge regression optimization problem in this setting.
>
> b. Argue that in this setting, the ridge coefficient estimates satisfy
>    $\hat{\beta}_1 = \hat{\beta}_2$
>
> c. Write out the lasso optimization problem in this setting.
>
> d. Argue that in this setting, the lasso coefficients $\hat{\beta}_1$ and
>    $\hat{\beta}_2$ are not unique---in other words, there are many possible
>    solutions to the optimization problem in (c). Describe these solutions.

### Question 6

> We will now explore (6.12) and (6.13) further.
>
> a. Consider (6.12) with $p = 1$. For some choice of $y_1$ and $\lambda > 0$,
>    plot (6.12) as a function of $\beta_1$. Your plot should confirm that
>    (6.12) is solved by (6.14).
>
> b. Consider (6.13) with $p = 1$. For some choice of $y_1$ and $\lambda > 0$,
>    plot (6.13) as a function of $\beta_1$. Your plot should confirm that
>    (6.13) is solved by (6.15).

### Question 7

> We will now derive the Bayesian connection to the lasso and ridge regression
> discussed in Section 6.2.2.
>
> a. Suppose that $y_i = \beta_0 + \sum_{j=1}^p x_{ij}\beta_j + \epsilon_i$
>    where $\epsilon_1, ..., \epsilon_n$ are independent and identically
>    distributed from a $N(0, \sigma^2)$ distribution. Write out the likelihood
>    for the data.
>
> b. Assume the following prior for $\beta$: $\beta_1, ..., \beta_p$ are
>    independent and identically distributed according to a double-exponential
>    distribution with mean 0 and common scale parameter b: i.e.
>    $p(\beta) = \frac{1}{2b}\exp(-|\beta|/b)$. Write out the posterior for
>    $\beta$ in this setting.
>
> c. Argue that the lasso estimate is the _mode_ for $\beta$ under this
>    posterior distribution.
>
> d. Now assume the following prior for $\beta$: $\beta_1, ..., \beta_p$ are
>    independent and identically distributed according to a normal distribution
>    with mean zero and variance $c$. Write out the posterior for $\beta$ in
>    this setting.
>
> e. Argue that the ridge regression estimate is both the _mode_ and the _mean_
>    for $\beta$ under this posterior distribution.

## Applied

### Question 8

> In this exercise, we will generate simulated data, and will then use this
> data to perform best subset selection.
>
> a. Use the `rnorm()` function to generate a predictor $X$ of length $n = 100$,
>    as well as a noise vector $\epsilon$ of length $n = 100$.
>
> b. Generate a response vector $Y$ of length $n = 100$ according to the model
>    $$Y = \beta_0 + \beta_1X + \beta_2X^2 + \beta_3X^3 + \epsilon,$$
>    where $\beta_0, \beta_1, \beta_2,$ and $\beta_3$ are constants of your
>    choice.
>
> c. Use the `regsubsets()` function to perform best subset selection in order
>    to choose the best model containing the predictors $X, X^2, ..., X^{10}$.
>    What is the best model obtained according to $C_p$, BIC, and adjusted
>    $R^2$? Show some plots to provide evidence for your answer, and report the
>    coefficients of the best model obtained. Note you will need to use the
>    `data.frame()` function to create a single data set containing both $X$ and
>    $Y$.
>
> d. Repeat (c), using forward stepwise selection and also using backwards
>    stepwise selection. How does your answer compare to the results in (c)?
>
> e. Now fit a lasso model to the simulated data, again using
>    $X, X^2, ..., X^{10}$ as predictors. Use cross-validation to select the
>    optimal value of $\lambda$. Create plots of the cross-validation error as a
>    function of $\lambda$. Report the resulting coefficient estimates, and
>    discuss the results obtained.
>
> f. Now generate a response vector $Y$ according to the model
>    $$Y = \beta_0 + \beta_7X^7 + \epsilon,$$ and perform best subset selection
>    and the lasso. Discuss the results obtained.

### Question 9

> In this exercise, we will predict the number of applications received using
> the other variables in the `College` data set.
>
> a. Split the data set into a training set and a test set.
>
> b. Fit a linear model using least squares on the training set, and report the
>    test error obtained.
>
> c. Fit a ridge regression model on the training set, with $\lambda$ chosen by
>    cross-validation. Report the test error obtained.
>
> d. Fit a lasso model on the training set, with $\lambda$ chosen by cross-
>    validation. Report the test error obtained, along with the number of
>    non-zero coefficient estimates.
>
> e. Fit a PCR model on the training set, with $M$ chosen by cross-validation.
>    Report the test error obtained, along with the value of $M$ selected by
>    cross-validation.
>
> f. Fit a PLS model on the training set, with $M$ chosen by cross-validation.
>    Report the test error obtained, along with the value of $M$ selected by
>    cross-validation.
>
> g. Comment on the results obtained. How accurately can we predict the number
>    of college applications received? Is there much difference among the test
>    errors resulting from these five approaches?

### Question 10

> We have seen that as the number of features used in a model increases, the
> training error will necessarily decrease, but the test error may not. We will
> now explore this in a simulated data set.
>
> a. Generate a data set with $p = 20$ features, $n = 1,000$ observations, and
>    an associated quantitative response vector generated according to the model
>    $Y =X\beta + \epsilon$, where $\beta$ has some elements that are exactly
>    equal to zero.
>
> b. Split your data set into a training set containing 100 observations and a
>    test set containing 900 observations.
>
> c. Perform best subset selection on the training set, and plot the training
>    set MSE associated with the best model of each size.
>
> d. Plot the test set MSE associated with the best model of each size.
>
> e. For which model size does the test set MSE take on its minimum value?
>    Comment on your results. If it takes on its minimum value for a model
>    containing only an intercept or a model containing all of the features,
>    then play around with the way that you are generating the data in (a) until
>    you come up with a scenario in which the test set MSE is minimized for an
>    intermediate model size.
>
> f. How does the model at which the test set MSE is minimized compare to the
>    true model used to generate the data? Comment on the coefficient values.
>
> g. Create a plot displaying $\sqrt{\sum_{j=1}^p (\beta_j - \hat{\beta}{}_j^r)^2}$
>    for a range of values of $r$, where $\hat{\beta}{}_j^r$ is the $j$th
>    coefficient estimate for the best model containing $r$ coefficients. Comment
>    on what you observe. How does this compare to the test MSE plot from (d)?

### Question 11

> We will now try to predict per capita crime rate in the `Boston` data set.
>
> a. Try out some of the regression methods explored in this chapter, such as
>    best subset selection, the lasso, ridge regression, and PCR. Present and
>    discuss results for the approaches that you consider.
>
> b. Propose a model (or set of models) that seem to perform well on this data
>    set, and justify your answer. Make sure that you are evaluating model
>    performance using validation set error, cross-validation, or some other
>    reasonable alternative, as opposed to using training error.
>
> c. Does your chosen model involve all of the features in the data set? Why or
>    why not?
