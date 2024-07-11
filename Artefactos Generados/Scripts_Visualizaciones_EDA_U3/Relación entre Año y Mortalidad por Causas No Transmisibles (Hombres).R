# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

# Ajuste del modelo de regresión para hombres
model_hombres <- lm(Mortalidad.por.Causas.No.Transmisibles..hombres ~ Year, data = dataset)

# Resumen del modelo
summary_model_hombres <- summary(model_hombres)

# Extraer los valores importantes
coefficients_hombres <- summary_model_hombres$coefficients
r_squared_hombres <- summary_model_hombres$r.squared
adj_r_squared_hombres <- summary_model_hombres$adj.r.squared
p_value_hombres <- summary_model_hombres$coefficients[2, 4]

# Calcular el valor de R de Pearson
r_pearson_hombres <- cor(dataset$Year, dataset$Mortalidad.por.Causas.No.Transmisibles..hombres)

# Crear anotaciones de texto en español, incluyendo el valor de R de Pearson
annotations_hombres <- paste(
  "Constante (Intercepto):", round(coefficients_hombres[1, 1], 2), "\n",
  "Pendiente:", round(coefficients_hombres[2, 1], 2), "\n",
  "R de Pearson:", round(r_pearson_hombres, 2), "\n",
  "R-cuadrado:", round(r_squared_hombres, 2), "\n",
  "R-cuadrado ajustado:", round(adj_r_squared_hombres, 2), "\n",
  "P-valor:", round(p_value_hombres, 5)
)

# Crear el gráfico de dispersión con línea de regresión y anotaciones
ggplot(dataset, aes(x = Year, y = Mortalidad.por.Causas.No.Transmisibles..hombres)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Relación entre Año y Mortalidad por Causas No Transmisibles (Hombres)", 
       x = "Año", 
       y = "Tasa de Mortalidad") +
  annotate("text", x = max(dataset$Year) - 10, y = max(dataset$Mortalidad.por.Causas.No.Transmisibles..hombres) * 0.8, 
           label = annotations_hombres, hjust = 0, vjust = 2, size = 3, color = "black") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))