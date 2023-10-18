## Assignment

myNewData <- data.frame(person = c("Stan", "Francine", "Steve", "Roger", "Hayley","Klaus"),
                        sex = factor(c("M", "F", "M", "M", "F", "M")),
                        funny = factor(c("High", "Med", "Low", "High", "Med", "Med"))
)


age <- c(41, 41, 15, 1600, 21, 60)

myNewData <- cbind(myNewData, age)




