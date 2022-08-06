# Modul 7: Project: Data Scientist Assessment Using R
# Bab 2: Statistic : Visualization with R
# Materi: Mencari Hubungan

# lm(formula = ___, data = ___)
# plot(___, ___)
# plot(___, ___)

lm(formula = Volume ~ Height + diameter_ft, data = trees_df)
plot(trees_df$diameter_ft, trees_df$Volume)
plot(trees_df$Height, trees_df$Volume)