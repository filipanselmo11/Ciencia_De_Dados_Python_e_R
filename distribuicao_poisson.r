#dpois(x,lambda)

#ppois(x,lambda, lower.tail=F)

#media de 2 acidentes
# x = 3, probabilidade que se pede 
# lambda = 2, media
dpois(3, lambda = 2)

# x <= 3

ppois(3, lambda = 2)

#x > 3
ppois(3, lambda = 2, lower.tail = F)
