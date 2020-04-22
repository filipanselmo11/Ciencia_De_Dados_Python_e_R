library("tm")

getSources()

getReaders()

corpus = VCorpus(DirSource("/dados", encoding="UTF-8"),
    readerControl=list(reader=readPlain, languange="eng")

inspect(corpus)

inspect(corpus[1:100])

meta(corpus[[1]])

inspect(corpus[[2]])

as.character(corpus[[2]])

as.character(corpus[[2]])[1]
