# Modul 7: Project: Data Scientist Assessment Using R
# Bab 2: Statistic : Visualization with R
# Materi: Mengecek Struktur Data

# names(.....)
# str(....)
# names(....)[1] <- ......
# trees_df$...... <- trees_df$......*.....
# head(.....)
# summary(.....)
# is.na(.....)

names(trees_df)
str(trees_df)
names(trees_df)[1] <- "Diameter"
trees_df$diameter_ft <- trees_df$Diameter*0.08333
head(trees_df)
summary(trees_df)
is.na(trees_df)