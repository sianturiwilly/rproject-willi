# Materi: Output Awal: Statistik Top 10

# install.packages("arules")
library(arules)

data <- read.transactions(file = "D:/rproject-willi/datasets/transaksi_dqlab_retail.tsv", 
                          format = "single", sep = "\t", cols = c(1,2), skip = 1)
top_10 <- sort(itemFrequency(data, type="absolute"), decreasing = TRUE)[1:10]
hasil <- data.frame("Nama Produk" = names(top_10), "Jumlah" = top_10, row.names = NULL)
write.csv(hasil, file="top10_item_retail.txt")

# library(arules)

# data <- read.transactions(file = "transaksi_dqlab_retail.tsv", format = "single", sep = "\t", cols = c(1,2), skip = 1)
# top_10 <- sort(itemFrequency(data, type="absolute"), decreasing = TRUE)[1:10]
# hasil <- data.frame("Nama Produk" = names(top_10), "Jumlah" = top_10, row.names = NULL)
# write.csv(hasil, file="top_10.txt")