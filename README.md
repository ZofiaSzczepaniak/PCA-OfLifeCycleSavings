# PCA-OfLifeCycleSavings
Implementation of Principal Component Analysis (PCA).
Principal Component Analysis (PCA) is a useful technique for exploratory data analysis, allowing you to better visualize the variation present in a dataset with many variables. It is particularly helpful in the case of "wide" datasets, where you have many variables for each sample. PCA is the type of linear transformation on a given data set. This linear transformation fits this data set to a new coordinate system in such a way that the most significant variance is found on the first coordinate, and each subsequent coordinate is orthogonal to the last and has a lesser variance. Each of the principal components is an eigenvector with eigenvalues. Eigenvector tells us about the direction of increasing value, eigenvalues tell us how much variance there is in the data in that direction. The number of eigenvalues and eigenvectors that exit is equal to the number of dimensions the data set has. So PCA allows us to reframe the data set without changing the data itself. It allows us to look at the data from a different angle, which should represent the data better.

# The files in project:
- PCA.png shows the graph of PCA for dataset LifeCycleSavings with continet clusters.
-  PCA.R contain implementation of Principal Component Analysis.

# Dataset:
In the LifeCycleSavings the data are averaged over the decade 1960–1970 to remove the business cycle or other short-term fluctuations. 
The data were obtained from Belsley, Kuh, and Welsch (1980) and can be used in politics and business. The dataset was obtained from datasets built-in R.
In this dataset are five variables:
1) SR - the average personal savings.
2) pop15 - the percentage of the population under 15.
3) pop75 - the percentage of the population over 75.
4) dpi - Disposable personal income (DPI) is how much money a person has to spend after taxes and any other mandatory withholdings are taken from their paycheck.
5) ddpi - the percentage rate of change in per-capita disposable income.

# The conclusions:
The plot shows that increasing dpi (the leftover money) is correlated with the age of the population. In Europe, North America, and Australia, where there is an aging society, the average personal savings are bigger than in South America, Asia, and Africa, where the society is young and many children are born. We also see that the growth of dpi - ddpi is not correlated with the age of the population, because the eigenvector of ddpi is orthogonal to the pop15 and pop75. The average personal savings are increasing with the age of the society and with the growth of the dpi, what is intuitive - the more money I have, the more I can save.

## Instructions: 
First to use the program, one must install the Python compiler. To do so, enter the site and follow the given steps: https://posit.co/download/rstudio-desktop/.

Then to start the program you must install libraries: devtools and ggbiplot, like this:


```
install.packages("devtools")
install_github("vqv/ggbiplot")
```
