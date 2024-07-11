# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Net.Migration.Rate..per.1.000.population.)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

# Código para el Gráfico de Líneas
ggplot(dataset, aes(x = Year)) +
  geom_line(aes(y = Net.Migration.Rate..per.1.000.population., color = "Tasa de Migración Neta")) +
  geom_line(aes(y = Crude.Death.Rate..deaths.per.1.000.population., color = "Tasa de Mortalidad Bruta")) +
  labs(title = "Tendencias de la Tasa de Migración Neta y Tasa de Mortalidad Bruta",
       x = "Año",
       y = "Tasa",
       color = "Leyenda") +
  theme_minimal()
