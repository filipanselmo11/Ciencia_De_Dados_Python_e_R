vertex_attr(grafo7)$Peso

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso)

q()

edge_attr(grafo7)$weight

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight)

vertex_attr(grafo7)$Cor = c("Blue", "Red", "Yellow", "Green")

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$Cor, edge.curved=0.4, frame=T)

tkplot(grafo7)



