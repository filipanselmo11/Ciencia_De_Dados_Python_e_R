CO2 #Conjunto de dados

plot(CO2$conc, CO2$uptake, pch=20,col=CO2$Treatment)

legend("bottomright", legend=c("nonchiled", "chilled"),
        cex=1, fill=c("black", "red"))

