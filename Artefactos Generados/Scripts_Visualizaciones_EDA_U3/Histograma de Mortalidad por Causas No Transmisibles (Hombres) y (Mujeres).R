# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)
library(gridExtra)

# Crear histogramas comparativos para hombres y mujeres
p1 <- ggplot(dataset, aes(x = Mortalidad.por.Causas.No.Transmisibles..hombres)) +
  geom_histogram(binwidth = 2, fill = "#0073C2FF", color = "black", alpha = 0.7) +
  geom_density(aes(y = ..count.. * 2), color = "darkblue", size = 1) +
  labs(title = "Histograma de Mortalidad por Causas No Transmisibles (Hombres)",
       x = "Tasa de Mortalidad", y = "Frecuencia") +
  theme_minimal()

p2 <- ggplot(dataset, aes(x = Mortalidad.por.Causas.No.Transmisibles..mujeres)) +
  geom_histogram(binwidth = 2, fill = "#EFC000FF", color = "black", alpha = 0.7) +
  geom_density(aes(y = ..count.. * 2), color = "darkred", size = 1) +
  labs(title = "Histograma de Mortalidad por Causas No Transmisibles (Mujeres)",
       x = "Tasa de Mortalidad", y = "Frecuencia") +
  theme_minimal()

# Mostrar los histogramas uno al lado del otro
grid.arrange(p1, p2, nrow = 2)