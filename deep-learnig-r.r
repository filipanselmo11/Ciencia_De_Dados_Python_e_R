digitos = read.csv(gzfile(file.choose()),header=F)

dim(digitos)

head(digitos)

split.screen(figs=c(2,2))# dividindo a tela em 4 áreas

dig = t(matrix(unlist(digitos[20,-785), nrow=28, byrow=F))
dig = t(apply(dig, 2, rev))

screen(1)
image(dig, col=grey.colors(255))
digitos[20,785]

screen(2)
dig = t(matrix(unlist(digitos[2,-785), nrow=28, byrow=F))
dig = t(apply(dig, 2, rev))
image(dig, col=grey.colors(255))


screen(3)
dig = t(matrix(unlist(digitos[4,-785), nrow=28, byrow=F))
dig = t(apply(dig, 2, rev))
image(dig, col=grey.colors(255))

screen(4)
dig = t(matrix(unlist(digitos[5,-785), nrow=28, byrow=F))
dig = t(apply(dig, 2, rev))
image(dig, col=grey.colors(255))

close.screen(all=T)
image(dig,col=grey.colors(255))
