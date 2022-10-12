# Classification

## Conceptual

### Question 1

> Using a little bit of algebra, prove that (4.2) is equivalent to (4.3). In
> other words, the logistic function representation and logit representation
> for the logistic regression model are equivalent.

### Question 2

> It was stated in the text that classifying an observation to the class for
> which (4.12) is largest is equivalent to classifying an observation to the
> class for which (4.13) is largest. Prove that this is the case. In other
> words, under the assumption that the observations in the $k$th class are
> drawn from a $N(\mu_k,\sigma^2)$ distribution, the Bayes' classifier assigns
> an observation to the class for which the discriminant function is maximized.

### Question 3

> This problem relates to the QDA model, in which the observations within each
> class are drawn from a normal distribution with a class-specific mean vector
> and a class specific covariance matrix. We consider the simple case where $p
> = 1$; i.e. there is only one feature.
>
> Suppose that we have $K$ classes, and that if an observation belongs to the
> $k$th class then $X$ comes from a one-dimensional normal distribution,
> $X \sim N(\mu_k,\sigma^2)$. Recall that the density function for the
> one-dimensional normal distribution is given in (4.16). Prove that in this
> case, the Bayes classifier is _not_ linear. Argue that it is in fact
> quadratic.
>
> _Hint: For this problem, you should follow the arguments laid out in_
> _Section 4.4.1, but without making the assumption that_
> _$\sigma_1^2 = ... = \sigma_K^2$._

### Question 4

> When the number of features $p$ is large, there tends to be a deterioration
> in the performance of KNN and other _local_ approaches that perform
> prediction using only observations that are _near_ the test observation for
> which a prediction must be made. This phenomenon is known as the
> _curse of dimensionality_, and it ties into the fact that non-parametric
> approaches often perform poorly when $p$ is large. We will now investigate
> this curse.
>
> a. Suppose that we have a set of observations, each with measurements on
>    $p = 1$ feature, $X$. We assume that $X$ is uniformly (evenly) distributed
>    on $[0, 1]$. Associated with each observation is a response value. Suppose
>    that we wish to predict a test observation's response using only
>    observations that are within 10% of the range of $X$ closest to that test
>    observation. For instance, in order to predict the response for a test
>    observation with $X = 0.6$, we will use observations in the range
>    $[0.55, 0.65]$. On average, what fraction of the available observations
>    will we use to make the prediction?
>
> b. Now suppose that we have a set of observations, each with measurements on
>    $p = 2$ features, $X_1$ and $X_2$. We assume that $(X_1, X_2)$ are
>    uniformly distributed on $[0, 1] \times [0, 1]$. We wish to predict a test
>    observation's response using only observations that are within 10% of the
>    range of $X_1$ _and_ within 10% of the range of $X_2$ closest to that test
>    observation. For instance, in order to predict the response for a test
>    observation with $X_1 = 0.6$ and $X_2 = 0.35$, we will use observations in
>    the range $[0.55, 0.65]$ for $X_1$ and in the range $[0.3, 0.4]$ for $X_2$.
>    On average, what fraction of the available observations will we use to
>    make the prediction?
>
> c. Now suppose that we have a set of observations on $p = 100$ features. Again
>    the observations are uniformly distributed on each feature, and again each
>    feature ranges in value from 0 to 1. We wish to predict a test
>    observation's response using observations within the 10% of each feature's
>    range that is closest to that test observation. What fraction of the
>    available observations will we use to make the prediction?
>
> d. Using your answers to parts (a)--(c), argue that a drawback of KNN when
>    $p$ is large is that there are very few training observations "near" any
>    given test observation.
>
> e. Now suppose that we wish to make a prediction for a test observation by
>    creating a $p$-dimensional hypercube centered around the test observation
>    that contains, on average, 10% of the training observations. For
>    $p = 1,2,$ and $100$, what is the length of each side of the hypercube?
>    Comment on your answer.
>
> _Note: A hypercube is a generalization of a cube to an arbitrary number of_
> _dimensions. When $p = 1$, a hypercube is simply a line segment, when $p = 2$_
> _it is a square, and when $p = 100$ it is a 100-dimensional cube._

### Question 5

> We now examine the differences between LDA and QDA.
>
> a. If the Bayes decision boundary is linear, do we expect LDA or QDA to
>    perform better on the training set? On the test set?
>
> b. If the Bayes decision boundary is non-linear, do we expect LDA or QDA to
>    perform better on the training set? On the test set?
>
> c. In general, as the sample size $n$ increases, do we expect the test
>    prediction accuracy of QDA relative to LDA to improve, decline, or be
>    unchanged? Why?
>
> d. True or False: Even if the Bayes decision boundary for a given problem is
>    linear, we will probably achieve a superior test error rate using QDA
>    rather than LDA because QDA is flexible enough to model a linear decision
>    boundary. Justify your answer.

### Question 6

> Suppose we collect data for a group of students in a statistics class with
> variables $X_1 =$ hours studied, $X_2 =$ undergrad GPA, and $Y =$ receive an A.
> We fit a logistic regression and produce estimated coefficient,
> $\hat\beta_0 = -6$, $\hat\beta_1 = 0.05$, $\hat\beta_2 = 1$.
>
> a. Estimate the probability that a student who studies for 40h and has an
>    undergrad GPA of 3.5 gets an A in the class.
>
> b. How many hours would the student in part (a) need to study to have a 50%
>    chance of getting an A in the class?

### Question 7

> Suppose that we wish to predict whether a given stock will issue a dividend
> this year ("Yes" or "No") based on $X$, last year's percent profit. We
> examine a large number of companies and discover that the mean value of $X$
> for companies that issued a dividend was $\bar{X} = 10$, while the mean for
> those that didn't was $\bar{X} = 0$. In addition, the variance of $X$ for
> these two sets of companies was $\hat{\sigma}^2 = 36$. Finally, 80% of
> companies issued dividends. Assuming that $X$ follows a normal distribution,
> predict the probability that a company will issue a dividend this year given
> that its percentage profit was $X = 4$ last year.
>
> _Hint: Recall that the density function for a normal random variable is_
> _$f(x) =\frac{1}{\sqrt{2\pi\sigma^2}}e^{-(x-\mu)^2/2\sigma^2}$._
> _You will need to use Bayes' theorem._

### Question 8

> Suppose that we take a data set, divide it into equally-sized training and
> test sets, and then try out two different classification procedures. First we
> use logistic regression and get an error rate of 20% on the training data and
> 30% on the test data. Next we use 1-nearest neighbors (i.e. $K = 1$) and get
> an average error rate (averaged over both test and training data sets) of
> 18%. Based on these results, which method should we prefer to use for
> classification of new observations? Why?

### Question 9

> This problem has to do with _odds_.
>
> a. On average, what fraction of people with an odds of 0.37 of defaulting on
>    their credit card payment will in fact default?
>
> b. Suppose that an individual has a 16% chance of defaulting on her credit
>    card payment. What are the odds that she will default?

### Question 10

> Equation 4.32 derived an expression for $\log(\frac{Pr(Y=k|X=x)}{Pr(Y=K|X=x)})$
> in the setting where $p > 1$, so that the mean for the $k$th class, $\mu_k$,
> is a $p$-dimensional vector, and the shared covariance $\Sigma$ is a 
> $p \times p$ matrix. However, in the setting with $p = 1$, (4.32) takes a 
> simpler form, since the means $\mu_1, ..., \mu_k$ and the variance $\sigma^2$
> are scalars. In this simpler setting, repeat the calculation in (4.32), and 
> provide expressions for $a_k$ and $b_{kj}$ in terms of 
> $\pi_k, \pi_K, \mu_k, \mu_K,$ and $\sigma^2$.

### Question 11

> Work out the detailed forms of $a_k$, $b_{kj}$, and $b_{kjl}$ in (4.33).
> Your answer should involve $\pi_k$, $\pi_K$, $\mu_k$, $\mu_K$, $\Sigma_k$, 
> and $\Sigma_K$.

### Question 12

> Suppose that you wish to classify an observation $X \in \mathbb{R}$ into 
> `apples` and `oranges`. You fit a logistic regression model and find that
>
> $$
> \hat{Pr}(Y=orange|X=x) = 
> \frac{\exp(\hat\beta_0 + \hat\beta_1x)}{1 + \exp(\hat\beta_0 + \hat\beta_1x)}
> $$
>
> Your friend fits a logistic regression model to the same data using the
> _softmax_ formulation in (4.13), and finds that
>
> $$
> \hat{Pr}(Y=orange|X=x) = 
> \frac{\exp(\hat\alpha_{orange0} + \hat\alpha_{orange1}x)}
> {\exp(\hat\alpha_{orange0} + \hat\alpha_{orange1}x) + \exp(\hat\alpha_{apple0} + \hat\alpha_{apple1}x)}
> $$
> 
> a. What is the log odds of `orange` versus `apple` in your model?
> b. What is the log odds of `orange` versus `apple` in your friend's model?
> c. Suppose that in your model, $\hat\beta_0 = 2$ and $\hat\beta = −1$. What
>    are the coefficient estimates in your friend's model? Be as specific as
>    possible.
> d. Now suppose that you and your friend fit the same two models on a different
>    data set. This time, your friend gets the coefficient estimates 
>    $\hat\alpha_{orange0} = 1.2$, $\hat\alpha_{orange1} = −2$, 
>    $\hat\alpha_{apple0} = 3$, $\hat\alpha_{apple1} = 0.6$. What are the 
>    coefficient estimates in your model?
> e. Finally, suppose you apply both models from (d) to a data set with 2,000
>    test observations. What fraction of the time do you expect the predicted 
>    class labels from your model to agree with those from your friend's model?
>    Explain your answer.

## Applied

### Question 13

> This question should be answered using the `Weekly` data set, which is part
> of the `ISLR2` package. This data is similar in nature to the `Smarket` data
> from this chapter's lab, except that it contains 1,089 weekly returns for 21
> years, from the beginning of 1990 to the end of 2010.
>
> a. Produce some numerical and graphical summaries of the `Weekly` data. Do
>    there appear to be any patterns?
>
> b. Use the full data set to perform a logistic regression with `Direction` as
>    the response and the five lag variables plus `Volume` as predictors. Use
>    the summary function to print the results. Do any of the predictors appear
>    to be statistically significant? If so, which ones?
>
> c. Compute the confusion matrix and overall fraction of correct predictions.
>    Explain what the confusion matrix is telling you about the types of
>    mistakes made by logistic regression.
>
> d. Now fit the logistic regression model using a training data period from
>    1990 to 2008, with `Lag2` as the only predictor. Compute the confusion
>    matrix and the overall fraction of correct predictions for the held out
>    data (that is, the data from 2009 and 2010).
>
> e. Repeat (d) using LDA.
>
> f. Repeat (d) using QDA.
>
> g. Repeat (d) using KNN with $K = 1$.
>
> h. Repeat (d) using naive Bayes.
>
> i. Which of these methods appears to provide the best results on this data?
>
> j. Experiment with different combinations of predictors, including possible
>    transformations and interactions, for each of the methods. Report the
>    variables, method, and associated confusion matrix that appears to provide
>    the best results on the held out data. Note that you should also
>    experiment with values for $K$ in the KNN classifier.

### Question 14

> In this problem, you will develop a model to predict whether a given car gets
> high or low gas mileage based on the `Auto` data set.
>
> a. Create a binary variable, `mpg01`, that contains a 1 if `mpg` contains a
>    value above its median, and a 0 if `mpg` contains a value below its
>    median. You can compute the median using the `median()` function. Note you
>    may find it helpful to use the `data.frame()` function to create a single
>    data set containing both `mpg01` and the other `Auto` variables.
>
> b. Explore the data graphically in order to investigate the association
>    between `mpg01` and the other features. Which of the other features seem
>    most likely to be useful in predicting `mpg01`? Scatterplots and boxplots
>    may be useful tools to answer this question. Describe your findings.
>
> c. Split the data into a training set and a test set.
>
> d. Perform LDA on the training data in order to predict `mpg01` using the
>    variables that seemed most associated with `mpg01` in (b). What is the
>    test error of the model obtained?
>
> e. Perform QDA on the training data in order to predict `mpg01` using the
>    variables that seemed most associated with `mpg01` in (b). What is the
>    test error of the model obtained?
>
> f. Perform logistic regression on the training data in order to predict
>    `mpg01` using the variables that seemed most associated with `mpg01` in
>    (b). What is the test error of the model obtained?
>
> g. Perform naive Bayes on the training data in order to predict `mpg01` using
>    the variables that seemed most associated with `mpg01` in (b). What is the
>    test error of the model obtained?
>
> h. Perform KNN on the training data, with several values of $K$, in order to
>    predict `mpg01`. Use only the variables that seemed most associated with
>    `mpg01` in (b). What test errors do you obtain? Which value of $K$ seems
>    to perform the best on this data set?

### Question 15

> This problem involves writing functions.
>
> a. Write a function, `Power()`, that prints out the result of raising 2 to
>    the 3rd power. In other words, your function should compute $2^3$ and
>    print out the results.
>
>    _Hint: Recall that `x^a` raises `x` to the power `a`. Use the `print()`_
>    _function to output the result._
>
> b. Create a new function, `Power2()`, that allows you to pass any two
>    numbers, `x` and `a`, and prints out the value of `x^a`. You can do this
>    by beginning your function with the line
>    ```r
>    > Power2=function(x,a) {
>    ```
>    You should be able to call your function by entering, for instance,
>    ```r
>    > Power2(3, 8)
>    ```
>    on the command line. This should output the value of $3^8$, namely, 6,561.
>
> c. Using the `Power2()` function that you just wrote, compute $10^3$,
>    $8^{17}$, and $131^3$.
>
> d. Now create a new function, `Power3()`, that actually returns the result
>    `x^a` as an `R` object, rather than simply printing it to the screen. That
>    is, if you store the value `x^a` in an object called result within your
>    function, then you can simply `return()` this result, using the following
>    line:
>    ```r
>    > return(result)
>    ```
>    The line above should be the last line in your function, before the `}`
>    symbol.
>
> e. Now using the `Power3()` function, create a plot of $f(x) = x^2$. The
>    $x$-axis should display a range of integers from 1 to 10, and the $y$-axis
>    should display $x^2$. Label the axes appropriately, and use an appropriate
>    title for the figure. Consider displaying either the $x$-axis, the
>    $y$-axis, or both on the log-scale. You can do this by using `log = "x"`,
>    `log = "y"`, or `log = "xy"` as arguments to the `plot()` function.
>
> f. Create a function, `PlotPower()`, that allows you to create a plot of `x`
>    against `x^a` for a fixed `a` and for a range of values of `x`. For
>    instance, if you call
>    ```r
>    > PlotPower(1:10, 3)
>    ```
>    then a plot should be created with an $x$-axis taking on values 
>    $1,2,...,10$, and a $y$-axis taking on values $1^3,2^3,...,10^3$.

### Question 13

> Using the `Boston` data set, fit classification models in order to predict
> whether a given census tract has a crime rate above or below the median.
> Explore logistic regression, LDA, naive Bayes and KNN models using various
> sub-sets of the predictors. Describe your findings.
>
> _Hint: You will have to create the response variable yourself, using the_
> _variables that are contained in the `Boston` data set._
