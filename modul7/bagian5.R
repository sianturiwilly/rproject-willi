# Modul 7: Project: Data Scientist Assessment Using R
# Bab 1: Fundamental R
# Materi: Mengganti Missing Value

# df <- c(1,2,3,4,5,6,NA,7,8,9,NA)
# df
# mean_replace <- ....
# df <- mean_replace(df)
# df

df <- c(1,2,3,4,5,6,NA,7,8,9,NA)
df
mean_replace <- function(x){ x[is.na(x)] <- mean(x, na.rm = TRUE); x}
df <- mean_replace(df)
df