colnames(mtcars)
dim(mtcars)

#modelo de regressao linear simples
cor(mtcars[1:4])# correlação entre variáveis

#modelo de regressao linear simples, mpg = y e disp = x
modelo = lm(mpg ~ disp, data=mtcars)
modelo

#coeficiente de determinação, R^2
summary(modelo)$r.squared

# R^2 ajustado
summary(modelo)$adj.r.squared

plot(mpg ~ disp, data=mtcars)# plotar grafico para ver a correlação entre essas variaveis
abline(modelo)#linha de melhor ajustes

#prevendo
predict(modelo, data.frame(disp=200))

#modelo de regressao linear multipla

modelo1 = lm(mpg ~ disp + hp + cyl, data=mtcars)
summary(modelo1)$r.squared
summary(modelo1)$adj.r.squared
predict(modelo1, data.frame(disp=200, hp=100, cyl=4))
