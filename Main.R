library(data.table)
library(openxlsx2)

RP <- setDT(read_xlsx("input/Données test RP.xlsx"))
fwrite(RP[, .N, Commune], "output/pop par commune.csv")

       