# Especificar un mirror de CRAN
chooseCRANmirror(graphics=FALSE, ind=1)

# Instalar las librerías necesarias
install.packages("aws.s3", repos = "http://cran.us.r-project.org")
install.packages("data.table", repos = "http://cran.us.r-project.org")
install.packages("readxl", repos = "http://cran.us.r-project.org")
