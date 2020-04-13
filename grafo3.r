grafo8 = read_graph(file.choose(), format=c("graphml"))

grafo8

degree(grafo8, mode="all")
degree(grafo8, mode="in")
degree(grafo8, mode="out")

grau = degree(grafo8, mode="in")

plot(grafo8, vertex.size=grau)

diameter(grafo8, directed=T)

diameter(grafo8, directed=F)

get_diameter(grafo8, directed=T)

neighborhood(grafo8, 0, mode=c("all"))

grafo9 = grafo8

isomorphic(grafo8, grafo9)

dist = graph(edges=c("A", "C", "A", "B", "B", "E","B", "F", "C","D", "G", "H","D", "H", "E","H", "F", "G"), directed=T)

plot(dist)

E(dist)$weight = c(2,1,2,1,2,1,1,3,1)
plot(dist, edge.label=E(dist)$weight)

distances(dist, V(dist)&name=="A", V(dist)$name=="H")

caminho = shortest_paths(dist, V(dist)$name=="A",V(dist)$name=="H",output=c("both"))

caminho$vpath


for(i in l:length(V(dist))){
  V(dist)$color[i] <- ifelse(i %in% as.vector(unlist(caminho$vpath)), "green", "gray)

}

for(i in l:length(E(dist))){
}


