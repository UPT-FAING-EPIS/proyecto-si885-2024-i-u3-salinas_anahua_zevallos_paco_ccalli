# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

# Ajuste del modelo de regresión
model_mujeres <- lm(Mortalidad.por.Causas.Transmisibles..mujeres ~ Year, data = dataset)

# Resumen del modelo
summary_model <- summary(model_mujeres)

# Extraer los valores importantes
coefficients <- summary_model$coefficients
r_squared <- summary_model$r.squared
adj_r_squared <- summary_model$adj.r.squared
p_value <- summary_model$coefficients[2, 4]

# Calcular el valor de R de Pearson
r_pearson <- cor(dataset$Year, dataset$Mortalidad.por.Causas.Transmisibles..mujeres)

# Crear anotaciones de texto en español, incluyendo el valor de R de Pearson
annotations <- paste(
  "Constante (Intercepto):", round(coefficients[1, 1], 2), "\n",
  "Pendiente:", round(coefficients[2, 1], 2), "\n",
  "R de Pearson:", round(r_pearson, 2), "\n",
  "R-cuadrado:", round(r_squared, 2), "\n",
  "R-cuadrado ajustado:", round(adj_r_squared, 2), "\n",
  "P-valor:", round(p_value, 5)
)

# Crear el gráfico de dispersión con línea de regresión y anotaciones
ggplot(dataset, aes(x = Year, y = Mortalidad.por.Causas.Transmisibles..mujeres)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Relación entre Año y Mortalidad por Causas Transmisibles (Mujeres)", 
       x = "Año", 
       y = "Tasa de Mortalidad") +
  annotate("text", x = Inf, y = Inf, label = annotations, hjust = 1.1, vjust = 1.1, size = 3, color = "black") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))


#ggplot(dataset, aes(x = Year, y = Mortalidad.por.Causas.Transmisibles..mujeres)) +
#  geom_point(color = "blue") +
#  geom_smooth(method = "lm", color = "red") +
#  labs(title = "Relación entre Año y Mortalidad por Causas Transmisibles (Mujeres)", 
#       x = "Año", 
#       y = "Tasa de Mortalidad") +
#  theme_minimal() +
#  theme(plot.title = element_text(hjust = 0.5))
