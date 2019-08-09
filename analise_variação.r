#Teste t
#t.test(y~x)

#Análise de Variância
# Um fator
#aov(V.Dependente ~ V.independente, data=dados)
#Dois fatores
#aov(V.Dependente ~ V.Independente * V.Dependente, data=dados)

#Teste de Tukey
# TukeyHSD(aov)

tratamento = read.csv(file.choose(), sep=";", header = )
fix(tratamento)

boxplot(tratamento$Horas ~ tratamento$Remedio)

an = aov(Horas ~ Remedio, data=tratamento)
summary(an)

an1 = aov(Horas ~ Remedio * Sexo, data=tratamento)
summary(an1)
tukey = TukeyHSD(an)
tukey

plot(tukey)
