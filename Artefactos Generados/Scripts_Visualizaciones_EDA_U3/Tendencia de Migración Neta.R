# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Net.Migration.Rate..per.1.000.population.)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

ggplot(dataset, aes(x = Year, y = Net.Number.of.Migrants..thousands.)) +
  geom_line(color = "blue") +
  geom_smooth(method = "loess", color = "red") +
  labs(title = "Tendencia de Migración Neta", x = "Año", y = "Número de Migrantes (miles)") +
  theme_minimal()