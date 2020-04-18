install.packages("igraphdata")

library(ipgraphdata)

data(Koenigsberg)

plot(Koenigsberg)

degree(Koenigsberg, mode="all")

data(kite)

plot(kite)

data(UKfaculty)

plot(UKfaculty)

comun = cluster_edge_betweenness(UKfaculty)

plot(comun, UKfaculty)


