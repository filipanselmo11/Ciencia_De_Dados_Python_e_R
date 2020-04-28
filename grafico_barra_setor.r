InsectSprays # Conjunto de dados

spray = aggregate( . ~spray, data=InsectSprays, sum)
spray

barplot(spray$count, col=gray.colors(6), xlab="Spray",
        ylab="Total", names.args=spray$spray)

box()

pie(spray$count, labels=NA, main="Spray",
        col=c(1:6))

legend("bottomright", legend=spray$spray, cex=1,
        fill=c(1:6))

##bottomright, bottom, bottomleft, left, topleft, top, topright, right, center


