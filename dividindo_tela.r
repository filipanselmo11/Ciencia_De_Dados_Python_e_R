plot(trees)

split.screen(figs=c(2,2))

screen(1)

plot(tress$Girth, tress$Volume)

screen(2)

plot(tress$Girth, tress$Height)

screen(3)

plot(trees$Height, trees$Volume)

screen(4)

hist(tress$Volume)

close.screen(all=TRUE)