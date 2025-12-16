# PCA-OfLifeCycleSavings
The curse of dimensionality occurs with high-dimensional data. To overcome this issue and see the most relevant dependencies in the dataset, the dimensionality reduction technique is to be used. One of such techniques is Principal Components Analysis (PCA). Using this method, I have analysed socioeconomic welfare around the world. PCA is a type of linear transformation on a given dataset. It allows us to find directions that have a high chance of being the most informative (highest variance). Also useful as a preprocessing tool in ML.


# Directory:
- PCA.png shows the graph of PCA for the dataset LifeCycleSavings with continent clusters.
- PCA.R contains the implementation of Principal Component Analysis.

# Dataset:
In the LifeCycleSavings, the data are averaged over the decade 1960–1970 to remove the business cycle or other short-term fluctuations. 
The data were obtained from Belsley, Kuh, and Welsch (1980) and can be used in politics and business.
In this dataset are five variables:
1) SR - the average personal savings.
2) pop15 - the percentage of the population under 15.
3) pop75 - the percentage of the population over 75.
4) dpi - Disposable personal income (DPI) is how much money a person has to spend after taxes and any other mandatory withholdings are taken from their paycheck.
5) ddpi - the percentage rate of change in per-capita disposable income.

# The conclusions:
The plot shows that increasing dpi (the leftover money) is correlated with the age of the population. In Europe, North America, and Australia, where there is an aging society, the average personal savings are bigger than in South America, Asia, and Africa, where the society is young and many children are born. We also see that the growth of dpi - ddpi is not correlated with the age of the population, because the eigenvector of ddpi is orthogonal to the pop15 and pop75. The average personal savings are increasing with the age of the society and with the growth of the dpi, what is intuitive - the more money I have, the more I can save.


![PCA](https://github.com/ZofiaSzczepaniak/PCA-OfLifeCycleSavings/assets/169342885/60c4a3e6-536a-45e5-b415-f62c7b40016c)

# Instructions: 
First to use the program, one must install the R compiler. To do so, enter the site and follow the given steps: https://posit.co/download/rstudio-desktop/.

Then to start the program you must install libraries: devtools and ggbiplot, like this:


```
install.packages("devtools")
install_github("vqv/ggbiplot")
```
