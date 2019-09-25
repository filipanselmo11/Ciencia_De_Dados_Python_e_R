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
