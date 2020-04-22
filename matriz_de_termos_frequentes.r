freq = TermDocumentMatrix(corpus)
matriz = as.matrix(freq)
matriz = sort(rows(matriz), decreasing=T)
matriz = data.frame(word=names)

head(matriz, n=100)