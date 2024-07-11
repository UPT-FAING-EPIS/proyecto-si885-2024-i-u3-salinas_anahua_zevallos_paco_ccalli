# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Infant.Mortality.Rate..infant.deaths.per.1.000.live.births.)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

ggplot(dataset, aes(x = Infant.Mortality.Rate..infant.deaths.per.1.000.live.births.)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Histograma de Mortalidad Infantil", x = "Tasa de Mortalidad Infantil (por 1,000 nacidos vivos)", y = "Frecuencia") +
  theme_minimal()
