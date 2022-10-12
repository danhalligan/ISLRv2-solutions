# Unsupervised Learning

## Conceptual

### Question 1

> This problem involves the $K$-means clustering algorithm.
>
> a. Prove (12.18).
>
> b. On the basis of this identity, argue that the $K$-means clustering
>    algorithm (Algorithm 12.2) decreases the objective (12.17) at each
>    iteration.

### Question 2

> Suppose that we have four observations, for which we compute a dissimilarity
> matrix, given by
> 
> \begin{bmatrix}
>      & 0.3  & 0.4  & 0.7  \\
> 0.3  &      & 0.5  & 0.8  \\
> 0.4  & 0.5  &      & 0.45 \\
> 0.7  & 0.8  & 0.45 &      \\
> \end{bmatrix}
> 
> For instance, the dissimilarity between the first and second observations is
> 0.3, and the dissimilarity between the second and fourth observations is 0.8.
> 
> a. On the basis of this dissimilarity matrix, sketch the dendrogram that
>    results from hierarchically clustering these four observations using
>    complete linkage. Be sure to indicate on the plot the height at which each
>    fusion occurs, as well as the observations corresponding to each leaf in
>    the dendrogram.
> 
> b. Repeat (a), this time using single linkage clustering.
> 
> c. Suppose that we cut the dendrogram obtained in (a) such that two clusters
>    result. Which observations are in each cluster?
> 
> d. Suppose that we cut the dendrogram obtained in (b) such that two clusters
>    result. Which observations are in each cluster?
> 
> e. It is mentioned in the chapter that at each fusion in the dendrogram, the
>    position of the two clusters being fused can be swapped without changing
>    the meaning of the dendrogram. Draw a dendrogram that is equivalent to the
>    dendrogram in (a), for which two or more of the leaves are repositioned,
>    but for which the meaning of the dendrogram is the same.

### Question 3

> In this problem, you will perform $K$-means clustering manually, with $K = 2$,
> on a small example with $n = 6$ observations and $p = 2$ features. The
> observations are as follows.
> 
> | Obs. | $X_1$ | $X_2$ |
> |------|-------|-------|
> | 1    | 1     | 4     |
> | 2    | 1     | 3     |
> | 3    | 0     | 4     |
> | 4    | 5     | 1     |
> | 5    | 6     | 2     |
> | 6    | 4     | 0     |
> 
> a. Plot the observations.
> 
> b. Randomly assign a cluster label to each observation. You can use the
>    `sample()` command in `R` to do this. Report the cluster labels for each
>    observation.
> 
> c. Compute the centroid for each cluster.
> 
> d. Assign each observation to the centroid to which it is closest, in terms of
>    Euclidean distance. Report the cluster labels for each observation.
> 
> e. Repeat (c) and (d) until the answers obtained stop changing.
> 
> f. In your plot from (a), color the observations according to the cluster
>    labels obtained.

### Question 4

> Suppose that for a particular data set, we perform hierarchical clustering
> using single linkage and using complete linkage. We obtain two dendrograms.
>
> a. At a certain point on the single linkage dendrogram, the clusters {1, 2, 3}
>    and {4, 5} fuse. On the complete linkage dendrogram, the clusters {1, 2, 3}
>    and {4, 5} also fuse at a certain point. Which fusion will occur higher on
>    the tree, or will they fuse at the same height, or is there not enough
>    information to tell?
>
> b. At a certain point on the single linkage dendrogram, the clusters {5} and
>    {6} fuse. On the complete linkage dendrogram, the clusters {5} and {6} also
>    fuse at a certain point. Which fusion will occur higher on the tree, or
>    will they fuse at the same height, or is there not enough information to
>    tell?

### Question 5

> In words, describe the results that you would expect if you performed
> $K$-means clustering of the eight shoppers in Figure 12.16, on the basis of
> their sock and computer purchases, with $K = 2$. Give three answers, one for
> each of the variable scalings displayed. Explain.

### Question 6

> We saw in Section 12.2.2 that the principal component loading and score
> vectors provide an approximation to a matrix, in the sense of (12.5).
> Specifically, the principal component score and loading vectors solve the
> optimization problem given in (12.6).
>
> Now, suppose that the M principal component score vectors zim, $m = 1,...,M$,
> are known. Using (12.6), explain that the first $M$ principal component
> loading vectors $\phi_{jm}$, $m = 1,...,M$, can be obtaining by performing $M$
> separate least squares linear regressions. In each regression, the principal
> component score vectors are the predictors, and one of the features of the
> data matrix is the response.

## Applied

### Question 7

> In the chapter, we mentioned the use of correlation-based distance and
> Euclidean distance as dissimilarity measures for hierarchical clustering.
> It turns out that these two measures are almost equivalent: if each
> observation has been centered to have mean zero and standard deviation one,
> and if we let $r_{ij}$ denote the correlation between the $i$th and $j$th
> observations, then the quantity $1 − r_{ij}$ is proportional to the squared
> Euclidean distance between the ith and jth observations.
>
> On the `USArrests` data, show that this proportionality holds.
>
> _Hint: The Euclidean distance can be calculated using the `dist()` function,_
> _and correlations can be calculated using the `cor()` function._

### Question 8

> In Section 12.2.3, a formula for calculating PVE was given in Equation
> 12.10. We also saw that the PVE can be obtained using the `sdev` output of the
> `prcomp()` function.
>
> On the `USArrests` data, calculate PVE in two ways:
>
> a. Using the `sdev` output of the `prcomp()` function, as was done in Section
>    12.2.3.
>
> b. By applying Equation 12.10 directly. That is, use the `prcomp()` function to
>    compute the principal component loadings. Then, use those loadings in
>    Equation 12.10 to obtain the PVE. 
>
> These two approaches should give the same results.
>
> _Hint: You will only obtain the same results in (a) and (b) if the same_
> _data is used in both cases. For instance, if in (a) you performed_
> _`prcomp()` using centered and scaled variables, then you must center and_
> _scale the variables before applying Equation 12.10 in (b)._

### Question 9

> Consider the `USArrests` data. We will now perform hierarchical clustering on
> the states.
>
> a. Using hierarchical clustering with complete linkage and Euclidean distance,
>    cluster the states.
>
> b. Cut the dendrogram at a height that results in three distinct clusters.
>    Which states belong to which clusters?
>
> c. Hierarchically cluster the states using complete linkage and Euclidean
>    distance, _after scaling the variables to have standard deviation one_.
>
> d. What effect does scaling the variables have on the hierarchical clustering
>    obtained? In your opinion, should the variables be scaled before the
>    inter-observation dissimilarities are computed? Provide a justification for
>    your answer.

### Question 10

> In this problem, you will generate simulated data, and then perform PCA and
> $K$-means clustering on the data.
>
> a.  Generate a simulated data set with 20 observations in each of three classes
>     (i.e. 60 observations total), and 50 variables. 
>     
>     _Hint: There are a number of functions in `R` that you can use to generate_
>     _data. One example is the `rnorm()` function; `runif()` is another option._
>     _Be sure to add a mean shift to the observations in each class so that_
>     _there are three distinct classes._
>
> b.  Perform PCA on the 60 observations and plot the first two principal
>     component score vectors. Use a different color to indicate the
>     observations in each of the three classes. If the three classes appear
>     separated in this plot, then continue on to part (c). If not, then return
>     to part (a) and modify the simulation so that there is greater separation
>     between the three classes. Do not continue to part (c) until the three
>     classes show at least some separation in the first two principal component
>     score vectors.
>
> c.  Perform $K$-means clustering of the observations with $K = 3$. How well do
>     the clusters that you obtained in $K$-means clustering compare to the true
>     class labels?
>     
>     _Hint: You can use the `table()` function in `R` to compare the true class_
>     _labels to the class labels obtained by clustering. Be careful how you_
>     _interpret the results: $K$-means clustering will arbitrarily number the_
>     _clusters, so you cannot simply check whether the true class labels and_
>     _clustering labels are the same._
>    
> d.  Perform $K$-means clustering with $K = 2$. Describe your results.
>     
> e.  Now perform $K$-means clustering with $K = 4$, and describe your results.
>     
> f.  Now perform $K$-means clustering with $K = 3$ on the first two principal
>     component score vectors, rather than on the raw data. That is, perform
>     $K$-means clustering on the $60 \times 2$ matrix of which the first column
>     is the first principal component score vector, and the second column is
>     the second principal component score vector. Comment on the results.
>     
> g.  Using the `scale()` function, perform $K$-means clustering with $K = 3$ on
>     the data _after scaling each variable to have standard deviation one_. How
>     do these results compare to those obtained in (b)? Explain.

### Question 11

> Write an `R` function to perform matrix completion as in Algorithm 12.1, and
> as outlined in Section 12.5.2. In each iteration, the function should keep
> track of the relative error, as well as the iteration count. Iterations should
> continue until the relative error is small enough or until some maximum number
> of iterations is reached (set a default value for this maximum number).
> Furthermore, there should be an option to print out the progress in each
> iteration.
> 
> Test your function on the `Boston` data. First, standardize the features to
> have mean zero and standard deviation one using the `scale()` function. Run an
> experiment where you randomly leave out an increasing (and nested) number of
> observations from 5% to 30%, in steps of 5%. Apply Algorithm 12.1 with $M =
> 1,2,...,8$. Display the approximation error as a function of the fraction of
> observations that are missing, and the value of $M$, averaged over 10
> repetitions of the experiment.

### Question 12

> In Section 12.5.2, Algorithm 12.1 was implemented using the `svd()` function.
> However, given the connection between the `svd()` function and the `prcomp()`
> function highlighted in the lab, we could have instead implemented the
> algorithm using `prcomp()`.
>
> Write a function to implement Algorithm 12.1 that makes use of `prcomp()`
> rather than `svd()`.

### Question 13

> On the book website, `www.StatLearning.com`, there is a gene expression data
> set (`Ch10Ex11.csv`) that consists of 40 tissue samples with measurements on
> 1,000 genes. The first 20 samples are from healthy patients, while the
> second 20 are from a diseased group.
>
> a. Load in the data using `read.csv()`. You will need to select `header = F`.
>
> b. Apply hierarchical clustering to the samples using correlation-based
>    distance, and plot the dendrogram. Do the genes separate the samples into
>    the two groups? Do your results depend on the type of linkage used?
> 
> c. Your collaborator wants to know which genes differ the most across the two
>    groups. Suggest a way to answer this question, and apply it here.
