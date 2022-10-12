# Moving Beyond Linearity

## Conceptual

### Question 1

> It was mentioned in the chapter that a cubic regression spline with one knot
> at $\xi$ can be obtained using a basis of the form $x, x^2, x^3, (x-\xi)^3_+$,
> where $(x-\xi)^3_+ = (x-\xi)^3$ if $x>\xi$ and equals 0 otherwise. We will now
> show that a function of the form
> $$
> f(x)=\beta_0 +\beta_1x+\beta_2x^2 +\beta_3x^3 +\beta_4(x-\xi)^3_+
> $$
> is indeed a cubic regression spline, regardless of the values of
> $\beta_0, \beta_1, \beta_2, \beta_3,\beta_4$.
>
> a. Find a cubic polynomial
> $$
> f_1(x) = a_1 + b_1x + c_1x^2 + d_1x^3
> $$
> such that $f(x) = f_1(x)$ for all $x \le \xi$. Express $a_1,b_1,c_1,d_1$ in
> terms of $\beta_0, \beta_1, \beta_2, \beta_3, \beta_4$.
>
> b. Find a cubic polynomial
> $$
> f_2(x) = a_2 + b_2x + c_2x^2 + d_2x^3
> $$
> such that $f(x) = f_2(x)$ for all $x > \xi$. Express $a_2, b_2, c_2, d_2$ in
> terms of $\beta_0, \beta_1, \beta_2, \beta_3, \beta_4$. We have now established
> that $f(x)$ is a piecewise polynomial.
>
> c. Show that $f_1(\xi) = f_2(\xi)$. That is, $f(x)$ is continuous at $\xi$.
>
> d. Show that $f_1'(\xi) = f_2'(\xi)$. That is, $f'(x)$ is continuous at $\xi$.
>
> e. Show that $f_1''(\xi) = f_2''(\xi)$. That is, $f''(x)$ is continuous at $\xi$.
>
> Therefore, $f(x)$ is indeed a cubic spline.
>
> _Hint: Parts (d) and (e) of this problem require knowledge of single-variable
> calculus. As a reminder, given a cubic polynomial_
> $$f_1(x) = a_1 + b_1x + c_1x^2 + d_1x^3,$$
> _the first derivative takes the form_
> $$f_1'(x) = b_1 + 2c_1x + 3d_1x^2$$
> _and the second derivative takes the form_
> $$f_1''(x) = 2c_1 + 6d_1x.$$

### Question 2

> Suppose that a curve $\hat{g}$ is computed to smoothly fit a set of $n$ points
> using the following formula:
> $$
> \DeclareMathOperator*{\argmin}{arg\,min} % Jan Hlavacek
> \hat{g} = \argmin_g \left(\sum_{i=1}^n (y_i - g(x_i))^2 + \lambda \int \left[ g^{(m)}(x) \right]^2 dx \right),
> $$
> where $g^{(m)}$ represents the $m$th derivative of $g$ (and $g^{(0)} = g$).
> Provide example sketches of $\hat{g}$ in each of the following scenarios.
>
> a. $\lambda=\infty, m=0$.
> b. $\lambda=\infty, m=1$.
> c. $\lambda=\infty, m=2$.
> d. $\lambda=\infty, m=3$.
> e. $\lambda=0, m=3$.

### Question 3

> Suppose we fit a curve with basis functions
> $b_1(X) = X$,
> $b_2(X) = (X - 1)^2I(X \geq 1)$.
> (Note that $I(X \geq 1)$ equals 1 for $X \geq 1$ and 0 otherwise.) We fit the
> linear regression model
> $$Y = \beta_0 +\beta_1b_1(X) + \beta_2b_2(X) + \epsilon,$$
> and obtain coefficient estimates
> $\hat{\beta}_0 = 1, \hat{\beta}_1 = 1, \hat{\beta}_2 = -2$.
> Sketch the estimated curve between $X = -2$ and $X = 6$. Note the intercepts,
> slopes, and other relevant information.

### Question 4

> Suppose we fit a curve with basis functions
> $b_1(X) = I(0 \leq X \leq 2) - (X -1)I(1 \leq X \leq 2),$
> $b_2(X) = (X -3)I(3 \leq X \leq 4) + I(4 \lt X \leq 5)$.
> We fit the linear regression model
> $$Y = \beta_0 +\beta_1b_1(X) + \beta_2b_2(X) + \epsilon,$$
> and obtain coefficient estimates
> $\hat{\beta}_0 = 1, \hat{\beta}_1 = 1, \hat{\beta}_2 = 3$.
> Sketch the estimated curve between $X = -2$ and $X = 2$. Note the intercepts,
> slopes, and other relevant information.

### Question 5

> Consider two curves, $\hat{g}$ and $\hat{g}_2$, defined by
>
> $$
> \hat{g}_1 = \argmin_g \left(\sum_{i=1}^n (y_i - g(x_i))^2 +
>   \lambda \int \left[ g^{(3)}(x) \right]^2 dx \right),
> $$
> $$
> \hat{g}_2 = \argmin_g \left(\sum_{i=1}^n (y_i - g(x_i))^2 +
>   \lambda \int \left[ g^{(4)}(x) \right]^2 dx \right),
> $$
>
> where $g^{(m)}$ represents the $m$th derivative of $g$.
>
> a. As $\lambda \to \infty$, will $\hat{g}_1$ or $\hat{g}_2$ have the smaller
>    training RSS?
> b. As $\lambda \to \infty$, will $\hat{g}_1$ or $\hat{g}_2$ have the smaller
>    test RSS?
> c. For $\lambda = 0$, will $\hat{g}_1$ or $\hat{g}_2$ have the smaller training
>    and test RSS?

## Applied

### Question 6

> In this exercise, you will further analyze the `Wage` data set considered
> throughout this chapter.
>
> a. Perform polynomial regression to predict `wage` using `age`. Use
>    cross-validation to select the optimal degree $d$ for the polynomial. What
>    degree was chosen, and how does this compare to the results of hypothesis
>    testing using ANOVA? Make a plot of the resulting polynomial fit to the data.
>
> b. Fit a step function to predict `wage` using `age`, and perform
>    cross-validation to choose the optimal number of cuts. Make a plot of the fit
>    obtained.

### Question 7

> The `Wage` data set contains a number of other features not explored in this
> chapter, such as marital status (`maritl`), job class (`jobclass`), and others.
> Explore the relationships between some of these other predictors and `wage`, and
> use non-linear fitting techniques in order to fit flexible models to the data.
> Create plots of the results obtained, and write a summary of your findings.

### Question 8

> Fit some of the non-linear models investigated in this chapter to the `Auto`
> data set. Is there evidence for non-linear relationships in this data set?
> Create some informative plots to justify your answer.

### Question 9

> This question uses the variables `dis` (the weighted mean of distances to five
> Boston employment centers) and `nox` (nitrogen oxides concentration in parts per
> 10 million) from the `Boston` data. We will treat `dis` as the predictor and
> `nox` as the response.
>
> a. Use the `poly()` function to fit a cubic polynomial regression to predict
>    `nox` using `dis`. Report the regression output, and plot the resulting data
>    and polynomial fits.
>
> b. Plot the polynomial fits for a range of different polynomial degrees (say,
>    from 1 to 10), and report the associated residual sum of squares.
>
> c. Perform cross-validation or another approach to select the optimal degree
>    for the polynomial, and explain your results.
>
> d. Use the `bs()` function to fit a regression spline to predict `nox` using
>    `dis`. Report the output for the fit using four degrees of freedom. How did
>    you choose the knots? Plot the resulting fit.
>
> e. Now fit a regression spline for a range of degrees of freedom, and plot the
>    resulting fits and report the resulting RSS. Describe the results obtained.
>
> f. Perform cross-validation or another approach in order to select the best
>    degrees of freedom for a regression spline on this data. Describe your
>    results.

### Question 10

> This question relates to the `College` data set.
>
> a. Split the data into a training set and a test set. Using out-of-state tuition
>    as the response and the other variables as the predictors, perform forward
>    stepwise selection on the training set in order to identify a satisfactory
>    model that uses just a subset of the predictors.
>
> b. Fit a GAM on the training data, using out-of-state tuition as the response
>    and the features selected in the previous step as the predictors. Plot the
>    results, and explain your findings.
>
> c. Evaluate the model obtained on the test set, and explain the results
>    obtained.
>
> d. For which variables, if any, is there evidence of a non-linear relationship
>    with the response?

### Question 11

> In Section 7.7, it was mentioned that GAMs are generally fit using a
> _backfitting_ approach. The idea behind backfitting is actually quite simple. We
> will now explore backfitting in the context of multiple linear regression.
>
> Suppose that we would like to perform multiple linear regression, but we do not
> have software to do so. Instead, we only have software to perform simple linear
> regression. Therefore, we take the following iterative approach: we repeatedly
> hold all but one coefficient estimate fixed at its current value, and update
> only that coefficient estimate using a simple linear regression. The process is
> continued until _convergence_---that is, until the coefficient estimates stop
> changing.
>
> We now try this out on a toy example.
>
> a. Generate a response $Y$ and two predictors $X_1$ and $X_2$, with $n = 100$.
>
> b. Initialize $\hat{\beta}_1$ to take on a value of your choice. It does not
>    matter 1 what value you choose.
>
> c. Keeping $\hat{\beta}_1$ fixed, fit the model
>    $$Y - \hat{\beta}_1X_1 = \beta_0 + \beta_2X_2 + \epsilon.$$
>    You can do this as follows:
>    
>    ```r
>    > a <- y - beta1 * x1
>    > beta2 <- lm(a ~ x2)$coef[2]
>    ```
>    
> d. Keeping $\hat{\beta}_2$ fixed, fit the model
>     $$Y - \hat{\beta}_2X_2 = \beta_0 + \beta_1 X_1 + \epsilon.$$
>     You can do this as follows:
>    
>     ```r
>     > a <- y - beta2 * x2
>     > beta1 <- lm(a ~ x1)$coef[2]
>     ```
>
> e. Write a for loop to repeat (c) and (d) 1,000 times. Report the estimates of
>    $\hat{\beta}_0, \hat{\beta}_1,$ and $\hat{\beta}_2$ at each iteration of the
>    for loop. Create a plot in which each of these values is displayed, with
>    $\hat{\beta}_0, \hat{\beta}_1,$ and $\hat{\beta}_2$ each shown in a different
>    color.
>
> f. Compare your answer in (e) to the results of simply performing multiple
>    linear regression to predict $Y$ using $X_1$ and $X_2$. Use the `abline()`
>    function to overlay those multiple linear regression coefficient estimates on
>    the plot obtained in (e).
>
> g. On this data set, how many backfitting iterations were required in order to
>    obtain a "good" approximation to the multiple regression coefficient
>    estimates?

### Question 12

> This problem is a continuation of the previous exercise. In a toy example with
> $p = 100$, show that one can approximate the multiple linear regression
> coefficient estimates by repeatedly performing simple linear regression in a
> backfitting procedure. How many backfitting iterations are required in order to
> obtain a "good" approximation to the multiple regression coefficient estimates?
> Create a plot to justify your answer.
