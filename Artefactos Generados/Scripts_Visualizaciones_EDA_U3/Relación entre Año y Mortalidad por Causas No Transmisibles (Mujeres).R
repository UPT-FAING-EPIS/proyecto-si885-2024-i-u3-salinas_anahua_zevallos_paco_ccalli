# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

# Ajuste del modelo de regresión para mujeres
model_mujeres <- lm(Mortalidad.por.Causas.No.Transmisibles..mujeres ~ Year, data = dataset)

# Resumen del modelo
summary_model_mujeres <- summary(model_mujeres)

# Extraer los valores importantes
coefficients_mujeres <- summary_model_mujeres$coefficients
r_squared_mujeres <- summary_model_mujeres$r.squared
adj_r_squared_mujeres <- summary_model_mujeres$adj.r.squared
p_value_mujeres <- summary_model_mujeres$coefficients[2, 4]

# Calcular el valor de R de Pearson
r_pearson_mujeres <- cor(dataset$Year, dataset$Mortalidad.por.Causas.No.Transmisibles..mujeres)

# Crear anotaciones de texto en español, incluyendo el valor de R de Pearson
annotations_mujeres <- paste(
  "Constante (Intercepto):", round(coefficients_mujeres[1, 1], 2), "\n",
  "Pendiente:", round(coefficients_mujeres[2, 1], 2), "\n",
  "R de Pearson:", round(r_pearson_mujeres, 2), "\n",
  "R-cuadrado:", round(r_squared_mujeres, 2), "\n",
  "R-cuadrado ajustado:", round(adj_r_squared_mujeres, 2), "\n",
  "P-valor:", round(p_value_mujeres, 5)
)

# Crear el gráfico de dispersión con línea de regresión y anotaciones
ggplot(dataset, aes(x = Year, y = Mortalidad.por.Causas.No.Transmisibles..mujeres)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Relación entre Año y Mortalidad por Causas No Transmisibles (Mujeres)", 
       x = "Año", 
       y = "Tasa de Mortalidad") +
  annotate("text", x = max(dataset$Year) - 10, y = max(dataset$Mortalidad.por.Causas.No.Transmisibles..mujeres) * 0.8, 
           label = annotations_mujeres, hjust = 0, vjust = 2, size = 3, color = "black") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))