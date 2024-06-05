library(datasets)
library(ggbiplot)
library(devtools)

print(LifeCycleSavings)
#I add additional information about the continent.
LifeCycleSavings.Country <- rownames(LifeCycleSavings) #I add a column title.
#In this dataset I have 5 variables.
LifeCycleSavings.Continent <- c(
  'Australia', 'Europe', 'Europe', 'South America', 'South America',
  'North America', 'South America', 'Asia', 'South America', 'South America',
  'Europe', 'South America', 'Europe', 'Europe', 'Europe', 'Europe',
  'South America', 'South America', 'Europe', 'Asia', 'Europe', 'Europe',
  'Asia', 'Asia', 'Europe', 'Europe', 'Europe', 'Europe', 'Australia',
  'South America', 'South America', 'South America', 'South America',
  'South America', 'Europe', 'Africa', 'Africa', 'Europe', 'Europe',
  'Europe', 'Europe', 'Africa', 'Europe', 'North America', 'South America',
  'Africa', 'Africa', 'South America', 'Africa', 'Asia'
) #First, we need to append our data with the column "Continent".


#I perform PCA with function prcomp(). I receive 5 principal components: PC1 to PC5. 
# The eigenvector with the highest eigenvalue is the first principal component.
result.pca <- prcomp(LifeCycleSavings[,c(1:5)], center = TRUE, scale. = TRUE)
print(summary(result.pca)) #I show all principal components.


# I create PCA biplot with ellipses using the function ggbiplot.
p =ggbiplot(result.pca, obs.scale = 1, var.scale = 1, ellipse = TRUE,
            #I set the dataset and choose scale. I also set the ellipse argument to be TRUE,
            # which will draw an ellipse around each group.
            groups = LifeCycleSavings.Continent) +
  #I pass info about continents to the 'groups' argument of ggbiplot.
  theme_minimal() + #I set the color of the background.
  ggtitle("PCA OF LifeCycleSavings dataset with Continent Clusters") + #I set title of the plot.
  theme(legend.position = "bottom") #I set the position of the legend.
print(p) #I show the plot.
