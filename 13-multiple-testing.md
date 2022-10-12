# Multiple Testing

## Conceptual

### Question 1

> Suppose we test $m$ null hypotheses, all of which are true. We control the
> Type I error for each null hypothesis at level $\alpha$. For each sub-problem,
> justify your answer.
>
> a. In total, how many Type I errors do we expect to make?
>
> b. Suppose that the m tests that we perform are independent. What is the
>    family-wise error rate associated with these m tests?
>    
>    _Hint: If two events A and B are independent, then Pr(A ∩ B) = Pr(A) Pr(B)._
>
> c. Suppose that $m = 2$, and that the p-values for the two tests are
>    positively correlated, so that if one is small then the other will tend to
>    be small as well, and if one is large then the other will tend to be large.
>    How does the family-wise error rate associated with these $m = 2$ tests
>    qualitatively compare to the answer in (b) with $m = 2$?
>    
>    _Hint: First, suppose that the two p-values are perfectly correlated._
>
> d. Suppose again that $m = 2$, but that now the p-values for the two tests are
>    negatively correlated, so that if one is large then the other will tend to
>    be small. How does the family-wise error rate associated with these $m = 2$
>    tests qualitatively compare to the answer in (b) with $m = 2$?
>
>    _Hint: First, suppose that whenever one p-value is less than $\alpha$,_
>    _then the other will be greater than $\alpha$. In other words, we can_
>    _never reject both null hypotheses._

### Question 2

> Suppose that we test $m$ hypotheses, and control the Type I error for each
> hypothesis at level $\alpha$. Assume that all $m$ p-values are independent,
> and that all null hypotheses are true.
>
> a. Let the random variable $A_j$ equal 1 if the $j$th null hypothesis is
> rejected, and 0 otherwise. What is the distribution of $A_j$?
>
> b. What is the distribution of $\sum_{j=1}^m A_j$?
>
> c. What is the standard deviation of the number of Type I errors that we will
> make?

### Question 3

> Suppose we test $m$ null hypotheses, and control the Type I error for the
> $j$th null hypothesis at level $\alpha_j$, for $j=1,...,m$. Argue that the
> family-wise error rate is no greater than $\sum_{j=1}^m \alpha_j$.

### Question 4

> Suppose we test $m = 10$ hypotheses, and obtain the p-values shown in Table
> 13.4.
>
> a. Suppose that we wish to control the Type I error for each null hypothesis
> at level $\alpha = 0.05$. Which null hypotheses will we reject?
>
> b. Now suppose that we wish to control the FWER at level $\alpha = 0.05$.
> Which null hypotheses will we reject? Justify your answer.
>
> c. Now suppose that we wish to control the FDR at level $q = 0.05$. Which null
> hypotheses will we reject? Justify your answer.
>
> d. Now suppose that we wish to control the FDR at level $q = 0.2$. Which null
> hypotheses will we reject? Justify your answer.
>
> e. Of the null hypotheses rejected at FDR level $q = 0.2$, approximately how
> many are false positives? Justify your answer.

### Question 5

> For this problem, you will make up p-values that lead to a certain number of
> rejections using the Bonferroni and Holm procedures.
>
> a. Give an example of five p-values (i.e. five numbers between 0 and 1 which,
> for the purpose of this problem, we will interpret as p-values) for which
> both Bonferroni’s method and Holm’s method reject exactly one null hypothesis
> when controlling the FWER at level 0.1.
>
> b. Now give an example of five p-values for which Bonferroni rejects one
> null hypothesis and Holm rejects more than one null hypothesis at level 0.1.

### Question 6

> For each of the three panels in Figure 13.3, answer the following questions:
>
> a. How many false positives, false negatives, true positives, true negatives,
> Type I errors, and Type II errors result from applying the Bonferroni
> procedure to control the FWER at level $\alpha = 0.05$?
>
> b. How many false positives, false negatives, true positives, true negatives,
> Type I errors, and Type II errors result from applying the Holm procedure to
> control the FWER at level $\alpha = 0.05$?
>
> c. What is the false discovery rate associated with using the Bonferroni
> procedure to control the FWER at level $\alpha = 0.05$?
>
> d. What is the false discovery rate associated with using the Holm procedure
> to control the FWER at level $\alpha = 0.05$?
>
> e. How would the answers to (a) and (c) change if we instead used the
> Bonferroni procedure to control the FWER at level $\alpha = 0.001$?

## Applied

### Question 7

> This problem makes use of the `Carseats` dataset in the `ISLR2` package.
>
> a. For each quantitative variable in the dataset besides `Sales`, fit a linear
> model to predict `Sales` using that quantitative variable. Report the p-values
> associated with the coefficients for the variables. That is, for each model of
> the form $Y = \beta_0 + \beta_1X + \epsilon$, report the p-value associated
> with the coefficient $\beta_1$. Here, $Y$ represents `Sales` and $X$
> represents one of the other quantitative variables.
>
> b. Suppose we control the Type I error at level $\alpha = 0.05$ for the
> p-values obtained in (a). Which null hypotheses do we reject?
>
> c. Now suppose we control the FWER at level 0.05 for the p-values. Which null
> hypotheses do we reject?
>
> d. Finally, suppose we control the FDR at level 0.2 for the p-values. Which
> null hypotheses do we reject?

### Question 8

> In this problem, we will simulate data from $m = 100$ fund managers.
>
> ```r
> set.seed(1)
> n <- 20
> m <- 100
> X <- matrix(rnorm(n * m), ncol = m)
> ```
>
> These data represent each fund manager’s percentage returns for each of $n =
> 20$ months. We wish to test the null hypothesis that each fund manager’s
> percentage returns have population mean equal to zero. Notice that we
> simulated the data in such a way that each fund manager’s percentage returns
> do have population mean zero; in other words, all $m$ null hypotheses are true.
>
> a. Conduct a one-sample $t$-test for each fund manager, and plot a histogram of
> the $p$-values obtained.
>
> b. If we control Type I error for each null hypothesis at level $\alpha =
> 0.05$, then how many null hypotheses do we reject?
>
> c. If we control the FWER at level 0.05, then how many null hypotheses do we
> reject?
>
> d. If we control the FDR at level 0.05, then how many null hypotheses do we
> reject?
>
> e. Now suppose we “cherry-pick” the 10 fund managers who perform the best in
> our data. If we control the FWER for just these 10 fund managers at level
> 0.05, then how many null hypotheses do we reject? If we control the FDR for
> just these 10 fund managers at level 0.05, then how many null hypotheses do we
> reject?
>
> f. Explain why the analysis in (e) is misleading.
>
> _Hint The standard approaches for controlling the FWER and FDR assume that all
> tested null hypotheses are adjusted for multiplicity, and that no
> “cherry-picking” of the smallest p-values has occurred. What goes wrong if we
> cherry-pick?_
