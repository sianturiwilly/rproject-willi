# Tanggal: 6 Agustus 2022
# Materi: Penjelasan Factor Pada R # RStudio
# Referensi: https://www.youtube.com/watch?v=SO6U5wh3MTA
# Author: Willi Chrisdeardo Sianturi

A <- c(1,1,2,3,3,1,1,2)
factor(A)
B <- c('Ipin','Ipin','Upin','Ipin')
factor(B)

# Mengganti level pada suata factor dengan menggunakan levels()
fA=factor(A)
fA
levels(fA) <- c('I','II','III')
fA