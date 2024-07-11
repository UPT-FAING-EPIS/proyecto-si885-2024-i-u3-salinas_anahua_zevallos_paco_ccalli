# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Net.Migration.Rate..per.1.000.population.)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)
library(reshape2)

# Calcular la matriz de correlación
cor_matrix <- cor(dataset, use = "complete.obs")

# Transformar la matriz de correlación a un formato largo (long format) para ggplot
melted_cor_matrix <- melt(cor_matrix)

# Crear el mapa de calor de correlaciones
ggplot(data = melted_cor_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1, 1), space = "Lab", 
                       name = "Correlación") +
  geom_text(aes(label = round(value, 2)), color = "black", size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 10, hjust = 1),
        axis.text.y = element_text(size = 10)) +
  coord_fixed() +
  labs(title = "Mapa de Calor de Correlaciones",
       x = "Variables",
       y = "Variables") +
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold"))