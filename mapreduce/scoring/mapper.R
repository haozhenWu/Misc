#!/usr/bin/Rscript
system_in <- file("stdin")
open(system_in)
data <- read.table(system_in, header = F, sep = "\t")
data$pred <- (data[, 2] * 2.13) ^ 2 # Scoring using proprietary algorithm

new <- read.csv("./myRLibs/number.csv")
#print(new)
# Map step below
write.table(data[, c(1, 3)], file = stdout(), row.names = F,
            col.names = F, quote = F, sep = "\t")

