dim(cars)
head(cars)
cor(cars)# Correlacao

modelo = lm(speed ~ dist, data=cars) #lm, linear model
modelo

plot(modelo)

plot(speed ~ dist, data=cars)
abline(modelo)

#formula pra previsão
modelo$coefficients
modelo$coefficients[1] + modelo$coefficients[2] * 22#formula da previsao

predict(modelo, data.frame(dist=22))#funcao da previsao
predict(modelo, data.frame(dist=50))#funcao da previsao

#PARTE 2

summary(modelo)# informações do modelo
modelo$coefficients# vendo os coeficientes

modelo$residuals# vendo os residuais

modelo$fitted.values# valores ajustados
plot(modelo$fitted.values, cars$dist)

dim(women)
colnames(women)
cor(women)

nmodelo = lm(height ~ weight, data=women)
nmodelo

predict(nmodelo, data.frame(weight=30))

base = women
write.csv(base, 'women.csv')
    