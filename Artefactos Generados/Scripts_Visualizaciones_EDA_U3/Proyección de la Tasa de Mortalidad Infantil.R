# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Infant.Mortality.Rate..infant.deaths.per.1.000.live.births., Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)
library(forecast)

# Convertir los datos en una serie temporal
ts_data <- ts(dataset$Infant.Mortality.Rate..infant.deaths.per.1.000.live.births., start = min(dataset$Year), frequency = 1)

# Ajustar el modelo de pronóstico
model <- auto.arima(ts_data)

# Realizar el pronóstico
forecast_data <- forecast(model, h = 10) # Pronosticar para los próximos 10 años

# Crear el gráfico
autoplot(forecast_data) +
  labs(title = "Proyección de la Tasa de Mortalidad Infantil", x = "Año", y = "Tasa de Mortalidad Infantil (por 1,000 nacidos vivos)") +
  theme_minimal()
