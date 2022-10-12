# Tree-Based Methods

## Conceptual

### Question 1

> Draw an example (of your own invention) of a partition of two-dimensional
> feature space that could result from recursive binary splitting. Your example
> should contain at least six regions. Draw a decision tree corresponding to
> this partition. Be sure to label all aspects of your figures, including the
> regions $R_1, R_2, ...,$ the cutpoints $t_1, t_2, ...,$ and so forth.
>
> _Hint: Your result should look something like Figures 8.1 and 8.2._

### Question 2

> It is mentioned in Section 8.2.3 that boosting using depth-one trees (or
> _stumps_) leads to an _additive_ model: that is, a model of the form
> $$
> f(X) = \sum_{j=1}^p f_j(X_j).
> $$
> Explain why this is the case. You can begin with (8.12) in Algorithm 8.2.

### Question 3

> Consider the Gini index, classification error, and cross-entropy in a simple
> classification setting with two classes. Create a single plot that displays
> each of these quantities as a function of $\hat{p}_{m1}$. The $x$-axis should
> display $\hat{p}_{m1}$, ranging from 0 to 1, and the $y$-axis should display
> the value of the Gini index, classification error, and entropy.
>
> _Hint: In a setting with two classes, $\hat{p}_{m1} = 1 - \hat{p}_{m2}$. You
> could make this plot by hand, but it will be much easier to make in `R`._

### Question 4

> This question relates to the plots in Figure 8.12.
>
> a. Sketch the tree corresponding to the partition of the predictor space
>    illustrated in the left-hand panel of Figure 8.12. The numbers inside the
>    boxes indicate the mean of $Y$ within each region.
>
> b. Create a diagram similar to the left-hand panel of Figure 8.12, using the
>    tree illustrated in the right-hand panel of the same figure. You should
>    divide up the predictor space into the correct regions, and indicate the
>    mean for each region.

### Question 5

> Suppose we produce ten bootstrapped samples from a data set containing red and
> green classes. We then apply a classification tree to each bootstrapped sample
> and, for a specific value of $X$, produce 10 estimates of
> $P(\textrm{Class is Red}|X)$:
> $$0.1, 0.15, 0.2, 0.2, 0.55, 0.6, 0.6, 0.65, 0.7, \textrm{and } 0.75.$$
> There are two common ways to combine these results together into a single
> class prediction. One is the majority vote approach discussed in this chapter.
> The second approach is to classify based on the average probability. In this
> example, what is the final classification under each of these two approaches?

### Question 6

> Provide a detailed explanation of the algorithm that is used to fit a
> regression tree.

## Applied

### Question 7

> In the lab, we applied random forests to the `Boston` data using `mtry = 6`
> and using `ntree = 25` and `ntree = 500`. Create a plot displaying the test
> error resulting from random forests on this data set for a more comprehensive
> range of values for `mtry` and `ntree`. You can model your plot after Figure
> 8.10. Describe the results obtained.

### Question 8

> In the lab, a classification tree was applied to the `Carseats` data set after
> converting `Sales` into a qualitative response variable. Now we will seek to
> predict `Sales` using regression trees and related approaches, treating the
> response as a quantitative variable.
>
> a. Split the data set into a training set and a test set.
>
> b. Fit a regression tree to the training set. Plot the tree, and interpret the
>    results. What test error rate do you obtain?
>
> c. Use cross-validation in order to determine the optimal level of tree
>    complexity. Does pruning the tree improve the test error rate?
>
> d. Use the bagging approach in order to analyze this data. What test error
>    rate do you obtain? Use the `importance()` function to determine which
>    variables are most important.
>
> e. Use random forests to analyze this data. What test error rate do you
>    obtain? Use the `importance()` function to determine which variables are
>    most important. Describe the effect of $m$, the number of variables
>    considered at each split, on the error rate obtained.
>
> f. Now analyze the data using BART, and report your results.

### Question 9

> This problem involves the `OJ` data set which is part of the `ISLR2` package.
>
> a. Create a training set containing a random sample of 800 observations, and a
>    test set containing the remaining observations.
>
> b. Fit a tree to the training data, with `Purchase` as the response and the
>    other variables except for `Buy` as predictors. Use the `summary()`
>    function to produce summary statistics about the tree, and describe the
>    results obtained. What is the training error rate? How many terminal nodes
>    does the tree have?
>
> c. Type in the name of the tree object in order to get a detailed text output.
>    Pick one of the terminal nodes, and interpret the information displayed.
>
> d. Create a plot of the tree, and interpret the results.
>
> e. Predict the response on the test data, and produce a confusion matrix
>    comparing the test labels to the predicted test labels. What is the test
>    error rate?
>
> f. Apply the `cv.tree()` function to the training set in order to determine
>    the optimal tree size.
>
> g. Produce a plot with tree size on the $x$-axis and cross-validated
>    classification error rate on the $y$-axis.
>
> h. Which tree size corresponds to the lowest cross-validated classification
>    error rate?
>
> i. Produce a pruned tree corresponding to the optimal tree size obtained using
>    cross-validation. If cross-validation does not lead to selection of a
>    pruned tree, then create a pruned tree with five terminal nodes.
>
> j. Compare the training error rates between the pruned and unpruned trees.
>    Which is higher?
>
> k. Compare the test error rates between the pruned and unpruned trees. Which
>    is higher?

### Question 10

> We now use boosting to predict `Salary` in the `Hitters` data set.
>
> a. Remove the observations for whom the salary information is unknown, and
>    then log-transform the salaries.
>
> b. Create a training set consisting of the first 200 observations, and a test
>    set consisting of the remaining observations.
>
> c. Perform boosting on the training set with 1,000 trees for a range of values
>    of the shrinkage parameter $\lambda$. Produce a plot with different
>    shrinkage values on the $x$-axis and the corresponding training set MSE on
>    the $y$-axis.
>
> d. Produce a plot with different shrinkage values on the $x$-axis and the
>    corresponding test set MSE on the $y$-axis.
>
> e. Compare the test MSE of boosting to the test MSE that results from applying
>    two of the regression approaches seen in Chapters 3 and 6.
>
> f. Which variables appear to be the most important predictors in the boosted
>    model?
>
> g. Now apply bagging to the training set. What is the test set MSE for this
>    approach?

### Question 11

> This question uses the `Caravan` data set.
>
> a. Create a training set consisting of the first 1,000 observations, and a
>    test set consisting of the remaining observations.
>
> b. Fit a boosting model to the training set with `Purchase` as the response
>    and the other variables as predictors. Use 1,000 trees, and a shrinkage
>    value of 0.01. Which predictors appear to be the most important?
>
> c. Use the boosting model to predict the response on the test data. Predict
>    that a person will make a purchase if the estimated probability of purchase
>    is greater than 20%. Form a confusion matrix. What fraction of the people
>    predicted to make a purchase do in fact make one? How does this compare
>    with the results obtained from applying KNN or logistic regression to this
>    data set?

### Question 12

> Apply boosting, bagging, random forests and BART to a data set of your choice.
> Be sure to fit the models on a training set and to evaluate their performance
> on a test set. How accurate are the results compared to simple methods like
> linear or logistic regression? Which of these approaches yields the best
> performance?
