
stopwords("portuguse")

corpus = tm_map(corpus, removeWords, stopwords("english"))
corpus = tm_map(corpus, stripWhitespace)
corpus = tm_map(corpus, removePunctuation)
corpus = tm_map(corpus, removeNumbers)

install.packages("wordcloud")

library(wordcloud)

wordcloud(corpus, max.words=100, random.order=T, 
    colors=rainbow(8), rot.per=0.5, use.r.layout=T)


