### Introduction

This is a repository for the second programming assignment for the
R-Programming modules on the John Hopkins University Data Science 
specialisation. Github username is dplcoursera2016

### Assignment: Caching the Inverse of a Matrix

This assignment was to write a pair of functions that
cache the inverse of a matrix. This is useful because matrix inversion can be 
a costly process for large matrix dimensions, so it would be
useful to store and retrieve invese matrices for any matrix who's
inverse has been calculated in order to avoid repreated 
calculations of the same inverse.

The solution is in the form of an R file called cachmatrix.R

The file cachematrix.R contains two functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

The code uses the solve() function to calculate the matrix of a matrix.
There are no checks to see that the matrix is square.
There are no checks to ensure that the matrix is invertible.

For this assignment, assume that the matrix supplied is always
invertible.

As part of complting this assignment the following steps were done:

1.  Forked the GitHub repository at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
2.  Cloned that forked GitHub repository to a local repository 
    on personal computer to edit the files locally.
3.  Editted the R file contained in the git repository and replaced templated code 
    with my solution.
4.  Committed the completed R file into my git repository and pushed the
    git branch to the GitHub repository under my account name "dplcoursera2016".
5.  Submitted to Coursera the URL to my GitHub repository that contains
    the completed R code for the assignment.

