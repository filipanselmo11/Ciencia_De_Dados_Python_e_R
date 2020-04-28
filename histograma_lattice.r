libray(lattice)

histogram(tress$Volume, main="Arvore", xlab="Volume",
            aspect=0.5, type="count", nint=10)


chickwts



aggregate(chickwts$weight, by=list(chickwts$feed),
    FUN=sum)

histogram(~weight | feed, data=chickwts)