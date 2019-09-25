#install.packages("arules")
library(arules)
transacoes = read.transactions(file.choose(), format="basket", sep=",")
transacoes

inspect(transacoes)
image(transacoes)

regras = apriori(transacoes, parameter=list(supp=0.5, conf=0.5))

inspect(regras)
plot(regras)
plot(regras, method="graph", control="")

#Regras de asssociação com Eclat#

regras = eclat(transacoes, parameter = list(supp=0.1, maxlen=15))
library(arulesVizy)

plot(regras, method="graph", control=list(type="items"))
