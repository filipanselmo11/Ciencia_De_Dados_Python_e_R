install.packages("neuralnet")
library(neuralnet=)

myiris = iris #cópia do dataset

myiris = cbind(myiris, myiris$Species == 'setosa')# Criando coluna de especies de setosa
head(myiris)

tail(myiris) #final do dataset myiris

myiris = cbind(myiris, myiris$Species == 'versicolor')# Criando coluna de especies de setosa
myiris = cbind(myiris, myiris$Species == 'virginica')# Criando coluna de especies de setosa

summary(myiris)
names(myiris) [6] = 'setosa'
names(myiris) [7] = 'versicolor'
names(myiris) [8] = 'virginica'

summary(myiris)


amostra = sample(2, 130, replace = T, prob = c(0.7,0.3))
myirisTreino = myiris[amostra==1,]
myirisTeste = myiris[amostra==2,]

dim(myirisTreino)
dim(myirisTeste)

modelo = neuralnet(setosa + versicolor + virginica ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, myirisTreino, hidden=c(5,4))
print(modelo)

plot(modelo)
teste = compute(modelo, myirisTeste[,1:4])

teste$net.result

resultado = as.data.frame(teste$net.result)
names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'
head(resultado)

resultado$classe = colnames(resultado[,1:3])[max.col(resultado[,1:3],ties.method='first')]
head(resultado)
#resultado

confusao = table(resultado$classe, myirisTeste$Species) # matriz de confusao
sum(diag(confusao) * 100 / sum(confusao)) #verificando a porcetagem de acertos

