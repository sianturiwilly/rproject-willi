# Modul 8: Project Analisa Klasifikasi Pinjaman untuk Sektor UMKM
# Bab 1: Pendahuluan
# Materi: Korelasi antar variabel data

# install.packages("corrplot")
# install.packages("ggcorrplot")
library(corrplot)
library(ggcorrplot)

M = data_reduce[,8:11]

# Library corrplot
# -- Pearson correlation
par(mfrow=c(2,2))
corrplot(cor(M), type="upper",order="hclust")
corrplot(cor(M), method="square",type="upper")
corrplot(cor(M), method="number",type="lower")
corrplot(cor(M), method="ellipse")

# -- Kendall correlation
par(mfrow=c(2,2))
corrplot(cor(M, method="kendall"), type="upper",order="hclust")
corrplot(cor(M, method="kendall"), method="square",type="upper")
corrplot(cor(M, method="kendall"), method="number",type="lower")
corrplot(cor(M, method="kendall"), method="ellipse")

# Library ggcorrplot
corr = round(cor(M), 1) # Pearson correlation
ggcorrplot(round(cor(M), 1),
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 3,
           method = "circle",
           colors = c("tomato2","white","springgreen3"),
           title = "Correlogram of Data Nasabah",
           ggtheme = theme_bw)