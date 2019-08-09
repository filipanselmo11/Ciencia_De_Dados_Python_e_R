#Boxplot = visualização
#boxplot.stats - variaveis
# outliers - outros pacotes

boxplot(iris$Sepal.Width) #com outlier
boxplot(iris$Sepal.Width, outline = F) #Sem outlier
boxplot.stats(iris$Sepal.Width)$out

install.packages('outliers')
library(outliers)
outlier(iris$Sepal.Width)
outlier(iris$Sepal.Width, opposite = T)
