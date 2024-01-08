load("die.Rdata") 
x <- table(w) 

relative_frequency <- prop.table(x)

standard_error <- sqrt(relative_frequency * (1 - relative_frequency) / sum(x))

barplot(relative_frequency, col = "green", xlab = "chi-square values", ylab = "frequency", names.arg = c(1, 2, 3, 4))

arrows(1:4, relative_frequency - standard_error, 1:4, relative_frequency + standard_error, angle = 90, code = 3, length = 0.1)