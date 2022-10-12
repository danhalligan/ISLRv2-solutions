# Survival Analysis and Censored Data

## Conceptual

### Question 1

> For each example, state whether or not the censoring mechanism is independent.
> Justify your answer.
>
> a. In a study of disease relapse, due to a careless research scientist, all
> patients whose phone numbers begin with the number "2" are lost to follow up.
>
> b. In a study of longevity, a formatting error causes all patient ages that
> exceed 99 years to be lost (i.e. we know that those patients are more than 99
> years old, but we do not know their exact ages).
>
> c. Hospital A conducts a study of longevity. However, very sick patients tend
> to be transferred to Hospital B, and are lost to follow up.
>
> d. In a study of unemployment duration, the people who find work earlier are
> less motivated to stay in touch with study investigators, and therefore are
> more likely to be lost to follow up.
>
> e. In a study of pregnancy duration, women who deliver their babies pre-term
> are more likely to do so away from their usual hospital, and thus are more
> likely to be censored, relative to women who deliver full-term babies.
>
> f. A researcher wishes to model the number of years of education of the
> residents of a small town. Residents who enroll in college out of town are
> more likely to be lost to follow up, and are also more likely to attend
> graduate school, relative to those who attend college in town.
>
> g. Researchers conduct a study of disease-free survival (i.e. time until
> disease relapse following treatment). Patients who have not relapsed within
> five years are considered to be cured, and thus their survival time is
> censored at five years.
>
> h. We wish to model the failure time for some electrical component. This
> component can be manufactured in Iowa or in Pittsburgh, with no difference in
> quality. The Iowa factory opened five years ago, and so components
> manufactured in Iowa are censored at five years. The Pittsburgh factory opened
> two years ago, so those components are censored at two years.
>
> i. We wish to model the failure time of an electrical component made in two
> different factories, one of which opened before the other. We have reason to
> believe that the components manufactured in the factory that opened earlier
> are of higher quality.

### Question 2

> We conduct a study with $n = 4$ participants who have just purchased cell
> phones, in order to model the time until phone replacement. The first
> participant replaces her phone after 1.2 years. The second participant still
> has not replaced her phone at the end of the two-year study period. The third
> participant changes her phone number and is lost to follow up (but has not yet
> replaced her phone) 1.5 years into the study. The fourth participant replaces
> her phone after 0.2 years.
>
> For each of the four participants ($i = 1,..., 4$), answer the following
> questions using the notation introduced in Section 11.1:
>
>
> a. Is the participant's cell phone replacement time censored?
>
> b. Is the value of $c_i$ known, and if so, then what is it?
>
> c. Is the value of $t_i$ known, and if so, then what is it?
>
> d. Is the value of $y_i$ known, and if so, then what is it?
>
> e. Is the value of $\delta_i$ known, and if so, then what is it?

### Question 3

> For the example in Exercise 2, report the values of $K$, $d_1,...,d_K$,
> $r_1,...,r_K$, and $q_1,...,q_K$, where this notation was defined in Section
> 11.3.

### Question 4


> This problem makes use of the Kaplan-Meier survival curve displayed in Figure
> 11.9. The raw data that went into plotting this survival curve is given in
> Table 11.4. The covariate column of that table is not needed for this problem.
>
> a. What is the estimated probability of survival past 50 days?
>
> b. Write out an analytical expression for the estimated survival function. For
> instance, your answer might be something along the lines of 
>
> $$
> \hat{S}(t) = \begin{cases}
> 0.8, & \text{if } t < 31\\
> 0.5, & \text{if } 31 \le t < 77\\
> 0.22 & \text{if } 77 \le t
> \end{cases}
> $$
>
> (The previous equation is for illustration only: it is not the correct
> answer!)

### Question 5

> Sketch the survival function given by the equation
>
> $$
> \hat{S}(t) = \begin{cases}
> 0.8, & \text{if } t < 31\\
> 0.5, & \text{if } 31 \le t < 77\\
> 0.22 & \text{if } 77 \le t
> \end{cases}
> $$
>
> Your answer should look something like Figure 11.9.

### Question 6

> This problem makes use of the data displayed in Figure 11.1. In completing
> this problem, you can refer to the observation times as $y_1,...,y_4$. The
> ordering of these observation times can be seen from Figure 11.1; their exact
> values are not required.
>
> a. Report the values of $\delta_1,...,\delta_4$, $K$, $d_1,...,d_K$,
> $r_1,...,r_K$, and $q_1,...,q_K$. The relevant notation is defined in Sections
> 11.1 and 11.3.
>
> b. Sketch the Kaplan-Meier survival curve corresponding to this data set. (You
> do not need to use any software to do this---you can sketch it by hand using
> the results obtained in (a).)
>
> c. Based on the survival curve estimated in (b), what is the probability that
> the event occurs within 200 days? What is the probability that the event does
> not occur within 310 days?
>
> d. Write out an expression for the estimated survival curve from (b).

### Question 7

> In this problem, we will derive (11.5) and (11.6), which are needed for the
> construction of the log-rank test statistic (11.8). Recall the notation in
> Table 11.1.
>
> a. Assume that there is no difference between the survival functions of the
> two groups. Then we can think of $q_{1k}$ as the number of failures if we draw
> $r_{1k} observations, without replacement, from a risk set of $r_k$
> observations that contains a total of $q_k$ failures. Argue that $q_{1k}$
> follows a hypergeometric distribution. Write the parameters of this
> distribution in terms of $r_{1k}$, $r_k$, and $q_k$.
>
> b. Given your previous answer, and the properties of the hyper-geometric
> distribution, what are the mean and variance of $q_{1k}$? Compare your answer
> to (11.5) and (11.6).

### Question 8

> Recall that the survival function $S(t)$, the hazard function $h(t)$, and the
> density function $f(t)$ are defined in (11.2), (11.9), and (11.11),
> respectively. Furthermore, define $F(t) = 1 − S(t)$. Show that the following
> relationships hold:
>
> $$
> f(t) = dF(t)/dt \\
> S(t) = \exp\left(-\int_0^t h(u)du\right)
> $$

### Question 9

> In this exercise, we will explore the consequences of assuming that the
> survival times follow an exponential distribution.
>
> a. Suppose that a survival time follows an $Exp(\lambda)$ distribution, so
> that its density function is $f(t) = \lambda\exp(−\lambda t)$. Using the
> relationships provided in Exercise 8, show that $S(t) = \exp(−\lambda t)$.
>
> b. Now suppose that each of $n$ independent survival times follows an
> $Exp(\lambda)$ distribution. Write out an expression for the likelihood
> function (11.13).
>
> c. Show that the maximum likelihood estimator for $\lambda$ is
> $$ 
> \hat\lambda = \sum_{i=1}^n \delta_i / \sum_{i=1}^n y_i.
> $$
> 
> d. Use your answer to (c) to derive an estimator of the mean survival time.
>
> _Hint: For (d), recall that the mean of an $Exp(\lambda)$ random variable is
> $1/\lambda$._

## Applied

### Question 10

> This exercise focuses on the brain tumor data, which is included in the
> `ISLR2` `R` library.
>
> a. Plot the Kaplan-Meier survival curve with ±1 standard error bands, using
> the `survfit()` function in the `survival` package.
>
> b. Draw a bootstrap sample of size $n = 88$ from the pairs ($y_i$,
> $\delta_i$), and compute the resulting Kaplan-Meier survival curve. Repeat
> this process $B = 200$ times. Use the results to obtain an estimate of the
> standard error of the Kaplan-Meier survival curve at each timepoint. Compare
> this to the standard errors obtained in (a).
>
> c. Fit a Cox proportional hazards model that uses all of the predictors to
> predict survival. Summarize the main findings.
>
> d. Stratify the data by the value of `ki`. (Since only one observation has
> `ki=40`, you can group that observation together with the observations that
> have `ki=60`.) Plot Kaplan-Meier survival curves for each of the five strata,
> adjusted for the other predictors.

### Question 11

> This example makes use of the data in Table 11.4.
>
> a. Create two groups of observations. In Group 1, $X < 2$, whereas in Group 2,
> $X \ge 2$. Plot the Kaplan-Meier survival curves corresponding to the two
> groups. Be sure to label the curves so that it is clear which curve
> corresponds to which group. By eye, does there appear to be a difference
> between the two groups' survival curves?
>
> b. Fit Cox's proportional hazards model, using the group indicator as a
> covariate. What is the estimated coefficient? Write a sentence providing the
> interpretation of this coefficient, in terms of the hazard or the
> instantaneous probability of the event. Is there evidence that the true
> coefficient value is non-zero?
>
> c. Recall from Section 11.5.2 that in the case of a single binary covariate,
> the log-rank test statistic should be identical to the score statistic for the
> Cox model. Conduct a log-rank test to determine whether there is a difference
> between the survival curves for the two groups. How does the p-value for the
> log-rank test statistic compare to the $p$-value for the score statistic for
> the Cox model from (b)?
