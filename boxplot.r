boxplot(trees$Volume, main="Arvores", xlab="Volume",
    col="blue", horizontal=T, notch=T)

boxplot.sts(trees$Height) #Vendo os parametros usados para gerar o boxplot

boxplot(trees, horizontal=T)