densidade = density(trees$Height, bw = bandwidth)

hist(trees$Height, main=NULL, xlab=NULL)

par(new=TRUE)

plot(densidade)