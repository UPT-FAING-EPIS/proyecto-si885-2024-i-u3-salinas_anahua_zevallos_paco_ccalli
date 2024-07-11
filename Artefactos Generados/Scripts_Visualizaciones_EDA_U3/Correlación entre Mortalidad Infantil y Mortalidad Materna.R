# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Infant.Mortality.Rate..infant.deaths.per.1.000.live.births., Mortality.between.Age.15.and.50..both.sexes..deaths.under.age.50.per.1.000.alive.at.age.15., Year)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:

library(ggplot2)

ggplot(dataset, aes(x = Infant.Mortality.Rate..infant.deaths.per.1.000.live.births., y = Mortality.before.Age.40..both.sexes..deaths.under.age.40.per.1.000.live.births.)) +
  geom_point(color = "blue") +
  labs(title = "Correlación entre Mortalidad Infantil y Mortalidad Materna", x = "Tasa de Mortalidad Infantil (por 1,000 nacidos vivos)", y = "Tasa de Mortalidad Materna (por 1,000 nacidos vivos)") +
  theme_minimal()
