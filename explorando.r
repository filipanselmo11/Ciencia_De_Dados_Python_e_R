AirPassengers

start(AirPassengers)# Inicio
end(AirPassengers)# fim

plot(AirPassengers)

plot(aggregate(AirPassengers))

monthplot(AirPassengers)

subst = window(AirPassengers, start = c(1960, 1), end= c(1960, 12))
subst

plot(subst)
  