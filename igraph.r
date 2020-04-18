install.packages("igraph")
library(igraph)

grafo1 = graph(edges=c(1,2,2,3,3,4,4,1,1,1))
plot(grafo1)
grafo2 = graph(edges=c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))
plot(grafo2)

#Outra forma, forma literal
grafo2 = graph_from_literal(1-+2,2-+3,3++4,4-+1)
plot(grafo2)

grafo3 = graph(edges=c(1,2,3,3,3,4,4,1), directed=F)
plot(grafo3)
class(grafo3)

grafo4 = graph(edges=c(1,2,2,3,3,4,4,1), directed=F, n=10)
plot(grafo4)

grafo5 = graph(edges=c("A", "B", "B", "C", "C", "D", "D", "E", "E", "A", "A", "C", "C", "B", isolates=c("F", "G"))
plot(grafo5)


grafo6 = graph(edges=c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José"))
plot(grafo6)
V(grafo6) $Peso = c(40,30,30,25)
vertex_attr(grafo6)

E(grafo6)$TipoAmizade = c("Amigo", "Inimigo", "Inimigo", "Amigo")

E(grafo6)$weight = c(1,2,1,3)
grafo6

V(grafo6)$type = "Humanos"
grafo6
