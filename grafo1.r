grafo5 = graph()
grafo5[1,]
grafo5[,1]
grafo5[1,1]

V(grafo5)$name


grafo7 = graph(edges=c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José", "Fernando", "Antônio"))

plot(grafo7)

V(grafo7)$Peso = c(40, 30, 30, 25)

vertex_attr(grafo7)

E(grafo7)$TipoAmizade = c("Amigo", "Inimigo", "Inimigo", "Amigo")

edge_attr(grafo7)

vertex_attr(grafo7)$Peso

E(grafo7)$weight = c(1,2,1,3)
grafo7

V(grafo7)$type = "Humanos"
grafo7


