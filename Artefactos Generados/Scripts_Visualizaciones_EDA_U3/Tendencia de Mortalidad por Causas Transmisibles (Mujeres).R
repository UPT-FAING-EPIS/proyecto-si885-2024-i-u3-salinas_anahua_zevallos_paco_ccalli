# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

ggplot(dataset, aes(x = Year, y = Mortalidad.por.Causas.Transmisibles..mujeres)) +
  geom_line(color = "blue") +
  geom_smooth(method = "loess", color = "red") +
  labs(title = "Tendencia de Mortalidad por Causas Transmisibles (Mujeres)", 
       x = "Año", 
       y = "Tasa de Mortalidad") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
