# Modul 7: Project: Data Scientist Assessment Using R
# Bab 3: Problem Statement #2
# Materi: Menghasilkan Grafik - Boxplot

# install.packages("ggplot2")
library(ggplot2)
ggplot(sleep_df, aes(x=as.character(group), y=extra, fill=as.character(group))) + geom_boxplot()