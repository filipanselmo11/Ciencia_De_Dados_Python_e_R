AirPassengers

mean(AirPassengers)

mean(window(AirPassengers, start=c(1960, 1), end=c(1960, 12)))

install.packages("forecast")
library(forecast)

mediamovel = ma(AirPassengers, order=12)
mediamovel 

previsao = forecast(mediamovel, h=12)
previsao

arima = auto.arima(AirPassengers)
arima


previsao1 = forecast(arima, h=12)
previsao1

plot(previsao1)