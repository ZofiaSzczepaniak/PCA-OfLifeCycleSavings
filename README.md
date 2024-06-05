# PCA-OfLifeCycleSavings
Implementation of Principal Component Analysis (PCA).
Principal Component Analysis (PCA) is a useful technique for exploratory data analysis, allowing you to better visualize the variation present in a dataset with many variables. It is particularly helpful in the case of "wide" datasets, where you have many variables for each sample. PCA is the type of linear transformation on a given data set. This linear transformation fits this data set to a new coordinate system in such a way that the most significant variance is found on the first coordinate, and each subsequent coordinate is orthogonal to the last and has a lesser variance. Each of the principal components is eigenvector with eigenvalues. Eigenvector is telling us about direction of increasing of value, eigenvalues is telling us how much variance there is in the data in that direction. The number of eigenvalues and eigenvectors that exits is equal to the number of dimensions the data set has. So PCA allows us to reframing data set without changing the data itself. It allows us to look on the data from a different angle, which should represent the data better.

## Instructions: 
First to use the program, one must install the Python compiler. To do so, enter the site and follow the given steps: https://posit.co/download/rstudio-desktop/.

Then to start the program you must install libraries: devtools and ggbiplot, like this:


```
install.packages("devtools")
install_github("vqv/ggbiplot")
```
