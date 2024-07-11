Sys.setlocale("LC_ALL", "en_US.UTF-8")

# Cargar las librerías
library(aws.s3)
library(data.table)
library(readxl)

# Configura tus credenciales de AWS
Sys.setenv("AWS_ACCESS_KEY_ID" = "AWS_ACCESS_KEY_ID",
           "AWS_SECRET_ACCESS_KEY" = "AWS_SECRET_ACCESS_KEY",
           "AWS_DEFAULT_REGION" = "us-east-2")

# Especifica el bucket
bucket_name <- "ccallicloud01"

bucket_contents <- get_bucket(bucket_name)

file_names <- sapply(bucket_contents, function(x) x$Key)
csv_files <- file_names[grep("\\.csv$", file_names)]
excel_files <- file_names[grep("\\.xlsx$", file_names)]

clean_column_names <- function(df) {
  names(df) <- make.names(names(df), unique = TRUE)
  return(df)
}

read_s3_csv <- function(bucket, file_name) {
  s3object <- get_object(object = file_name, bucket = bucket)
  data <- rawToChar(s3object)
  data <- iconv(data, from = "UTF-8", to = "UTF-8", sub = "")
  data <- fread(data, encoding = "UTF-8")
  data <- clean_column_names(data)
  return(data)
}

read_s3_excel <- function(bucket, file_name) {
  s3object <- get_object(object = file_name, bucket = bucket)
  temp_file <- tempfile(fileext = ".xlsx")
  writeBin(s3object, temp_file)
  data <- read_excel(temp_file)
  data <- clean_column_names(data)
  unlink(temp_file)
  return(data)
}

csv_data <- lapply(csv_files, function(x) read_s3_csv(bucket_name, x))
excel_data <- lapply(excel_files, function(x) read_s3_excel(bucket_name, x))

data <- c(csv_data, excel_data)

names(data) <- c(gsub("\\.csv$", "", csv_files), gsub("\\.xlsx$", "", excel_files))

list2env(data, envir = .GlobalEnv)
