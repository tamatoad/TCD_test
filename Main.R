library(data.table)
library(openxlsx2)

RP <- setDT(read_xlsx("input/Données test RP.xlsx"))
fwrite(RP[, .N, Commune], "output/pop par commune.csv")
fwrite(RP[, .N, BI01], "output/pop par sexe.csv")

taille <- 10^8

DT <- data.table(A=sample(x = 1:5, size = taille, replace = TRUE),
                 B=sample(x = LETTERS, size = taille, replace = TRUE),
                 C=sample(x = 1:100, size = taille, replace = TRUE))

DT[A=="Actif",.N, B][order(B)][B %in% c("A", "B")][order(N)]

