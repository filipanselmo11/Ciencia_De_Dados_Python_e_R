comun = cluster_edge_betweenness(grafo)

comun$membership

plot(grafo, vertex.color=comun$membership)

comun = cluster_edge_betweenness(dist)

comun


comun$membership

plot(dist,vertex.color=comun$membership, edge.color="gray")

cli = cliques(as.undirected(grafo8), min=4)

length(cli)

cli




