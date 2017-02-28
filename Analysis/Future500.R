getwd()

fin <- read.csv("Analysis/Data/Future-500.csv")

# Basic things to check
head(fin)
str(fin)
summary(fin)

# Changing from non-factor to factor:
fin$ID <- factor(fin$ID)
summary(fin)
str(fin)

fin$Inception <- factor(fin$Inception)
summary(fin)
str(fin)

# Factor Variable Trap (FVT)
# Comes into picture when converting a factor to a non-factor.

# Converting character to numeric
a <- c("12", "13", "14", "12", "12")
class(a)
b <- as.numeric(a)
class(b)
typeof(b)

# Converting Factors to Numeric
z <- factor(c("12", "13", "14", "12", "12"))
z
typeof(z)
class(z)

# Correct way of doing it:
# First convert the factor to character
# Second convert the character to numeric

x <- as.numeric(as.character(z))
x

# sub() and gsub()
fin$Expenses <- gsub(" Dollars", "", fin$Expenses)
fin$Expenses <- gsub(",", "", fin$Expenses)
fin$Revenue <- gsub("\\$", "", fin$Revenue)
fin$Revenue <- gsub(",", "", fin$Revenue)
fin$Growth <- gsub("%", "", fin$Growth)
head(fin)
str(fin)

