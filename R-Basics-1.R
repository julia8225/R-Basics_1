# Lab: R Basics 1
# Student: Julia Jainarine
# Date: 08/30/2026
#
# Before running this script, place these files in the same folder:
#   orangutanCSV.csv
#   baseballCSV.csv
#
# Run the entire script only after both data files are in that folder.


# ================================================================
# QUESTION 1
# ================================================================

12 %% 5

# Answer: The remainder of 12 divided by 5 is 2.


# ================================================================
# QUESTION 2
# ================================================================

x <- 1:10
y <- 1 / x

x
y

plot(x, y,
     xlab = "Numbers 1 through 10",
     ylab = "1 divided by x",
     main = "Numbers and Their Reciprocals",
     pch = 19)

# Answer: x contains the numbers 1 through 10. The vector y contains
# 1, 1/2, 1/3, and so on through 1/10.


# ================================================================
# QUESTION 3
# ================================================================

rep(1:5, rep(3, 5))
rep(1:5, 1:5)
rep(1:5, c(1, 2, 3, 2, 1))
rep(c("A", "B", "C"), c(4, 3, 2))

# Answers:
# 1. rep(1:5, rep(3, 5)) repeats every number from 1 through 5
#    three times because rep(3, 5) creates five copies of the number 3.
# 2. rep(1:5, 1:5) repeats 1 once, 2 twice, 3 three times,
#    4 four times, and 5 five times.
# 3. rep(1:5, c(1, 2, 3, 2, 1)) repeats 1 once, 2 twice,
#    3 three times, 4 twice, and 5 once.
# 4. rep(c("A", "B", "C"), c(4, 3, 2)) repeats A four times,
#    B three times, and C twice.
# The second argument of rep() determines how many times each value
# from the first argument is repeated.


# ================================================================
# QUESTION 4
# ================================================================

even_numbers <- seq(0, 100, by = 2)

even_numbers
sum(even_numbers)
mean(even_numbers)
sd(even_numbers)
var(even_numbers)
median(even_numbers)
max(even_numbers)
min(even_numbers)
quantile(even_numbers, 0.25)
quantile(even_numbers, 0.75)

# Answers:
# Sum = 2550
# Mean = 50
# Standard deviation = 29.73214
# Variance = 884
# Median = 50
# Maximum = 100
# Minimum = 0
# First quartile = 25
# Third quartile = 75


# ================================================================
# QUESTION 5
# ================================================================

y <- c(8, 3, 5, 7, 6, 6, 8, 9, 2, 3, 9, 4, 10, 4, 11)

even_or_odd <- ifelse(y %% 2 == 0, "even", "odd")
even_or_odd

even_addresses <- which(y %% 2 == 0)
odd_addresses <- which(y %% 2 != 0)

even_addresses
odd_addresses

# Answer: The addresses of the even values are 1, 5, 6, 7, 9,
# 12, 13, and 14. The addresses of the odd values are 2, 3, 4,
# 8, 10, 11, and 15.


# ================================================================
# QUESTION 6
# ================================================================

# 6A: 400 divided by 17
400 / 17
# Answer: 23.52941

# 6B: 12 times the fraction (6 times 15) divided by (40 divided by 21)
12 * ((6 * 15) / (40 / 21))
# Answer: 567

# 6C: Cube root of 250
250^(1 / 3)
# Answer: 6.299605

# 6D: Base-10 logarithm of 1000
log10(1000)
# Answer: 3


# ================================================================
# QUESTION 7
# ================================================================

# 7A
seq(0, 16, by = 4)
# Answer: 0, 4, 8, 12, 16

# 7B
seq(0.3, 1.5, by = 0.3)
# Answer: 0.3, 0.6, 0.9, 1.2, 1.5

# 7C
seq(0, -40, by = -10)
# Answer: 0, -10, -20, -30, -40

# 7D
rep(c("tropics", "temperate", "boreal"), each = 3)
# Answer: Each of the three words is repeated three consecutive times.


# ================================================================
# QUESTION 8
# ================================================================

numbers_q8 <- c(5, 3, 8, 2, 9, 3, 6, 9, 1, 0, 2, 7)

sum(numbers_q8)
mean(numbers_q8)
length(numbers_q8)

# Answers:
# Sum = 55
# Mean = 4.583333
# Length = 12


# ================================================================
# QUESTION 9
# ================================================================

numbers_q9 <- c(3, 9, 6, 1, 9, 4, 7, 8, 2, 6, 3, 8, 0, 2, 5)

sort(numbers_q9)
sort(numbers_q9, decreasing = TRUE)

# Answers:
# Ascending: 0, 1, 2, 2, 3, 3, 4, 5, 6, 6, 7, 8, 8, 9, 9
# Descending: 9, 9, 8, 8, 7, 6, 6, 5, 4, 3, 3, 2, 2, 1, 0


# ================================================================
# QUESTION 10
# ================================================================

# 10A: setwd()
# setwd() changes R's working directory. Its primary argument is dir,
# which is the path of the folder R should use as its working directory.
# Example: setwd("C:/Users/Name/Documents/R-Basics-1")

# 10B: read.table()
# read.table() imports a table from a file and returns a data frame.
# Important arguments include file (the filename/path), header (whether
# the first row contains column names), and sep (the column separator).
# Example: data <- read.table("data.txt", header = TRUE, sep = "\t")

# 10C: names()
# names() returns or changes the names associated with an object. For a
# data frame, it returns or changes the column names. Its argument is the
# object whose names should be examined or changed.
# Example: names(data)

# 10D: attach()
# attach() places a data frame on R's search path, allowing its columns
# to be referenced without repeatedly typing the data-frame name. Its
# argument is the data frame or list to attach. detach() removes it.
# Example: attach(data)
#          detach(data)

# 10E: range()
# range() returns the minimum and maximum of the supplied values. Its
# main argument is a numeric vector. The optional na.rm = TRUE argument
# removes missing values before calculating the range.
# Example: range(numbers_q9)


# ================================================================
# QUESTION 11
# ================================================================

# The supplied file is tab-separated even though its extension is .csv.
apes <- read.table("orangutanCSV.csv", header = TRUE, sep = "\t")

# 11A
apes
str(apes)

# Answer: The orangutan data were imported as a data frame named apes.

# 11B
names(apes)

# Answer: The column names are individual, location, weight.kg, sex,
# and Tool.use. weight.kg is continuous. individual, location, sex,
# and Tool.use are categorical variables. Tool.use is represented in R
# as a logical TRUE/FALSE variable.

# 11C.1: Display only orangutans found in Borneo.
borneo_apes <- apes[apes$location == "Borneo", ]
borneo_apes

# 11C.2: Extract males and order them from heaviest to lightest.
males <- apes[apes$sex == "male", ]
males <- males[order(males$weight.kg, decreasing = TRUE), ]
males

# Answer: From heaviest to lightest, the males are H (110 kg),
# A (105 kg), I (81 kg), J (77 kg), B (72 kg), and C (60 kg).

# 11C.3: Find the lightest orangutan's weight.
min(apes$weight.kg)

# Answer: The lightest orangutan weighs 30 kg.

# 11C.4: Extract females and find their weight range.
females <- apes[apes$sex == "female", ]
range(females$weight.kg)

# Answer: Female weights range from 30 kg to 43 kg.

# 11C.5: Find the mean weight of orangutans in Sumatra.
mean(apes$weight.kg[apes$location == "Sumatra"])

# Answer: The mean weight of orangutans in Sumatra is 55.875 kg.

# 11C.6: Count orangutans observed using tools.
sum(apes$Tool.use)

# Answer: Eight orangutans have been observed using tools.

# 11C.7: Find the combined weight of the three largest females.
female_weights <- sort(females$weight.kg, decreasing = TRUE)
sum(female_weights[1:3])

# Answer: The combined weight of the three largest females is 126 kg.


# ================================================================
# QUESTION 12
# ================================================================

organisms <- c("honeybee", "orangutan", "oak tree", "blue whale",
               "frog", "butterfly", "eagle", "mushroom", "shark",
               "bacterium")

# Setting a seed makes the random samples reproducible.
set.seed(620)

# Sample twice with replacement.
with_replacement_1 <- sample(organisms, size = 10, replace = TRUE)
with_replacement_2 <- sample(organisms, size = 10, replace = TRUE)

with_replacement_1
with_replacement_2

# Sample twice without replacement.
without_replacement_1 <- sample(organisms, size = 10, replace = FALSE)
without_replacement_2 <- sample(organisms, size = 10, replace = FALSE)

without_replacement_1
without_replacement_2

# Answer: Sampling with replacement returns an organism to the available
# group after it is selected, so an organism can appear more than once in
# the same sample. Sampling without replacement does not return selected
# organisms, so all ten organisms appear exactly once when the sample size
# equals the length of this vector.


# ================================================================
# QUESTION 13
# ================================================================

# The supplied file is tab-separated even though its extension is .csv.
baseball <- read.table("baseballCSV.csv", header = TRUE, sep = "\t")

# 13A: Display the column names.
names(baseball)

# Answer: Franchise, Games, Wins, Losses, Win.Loss.Percent, Runs.Scored,
# Runs.Allowed, Home.Games, Away.Games, Home.Wins, Home.Losss, Away.Wins,
# and Away.Losses. The dataset spells Home.Losss with three s characters.

# 13B: Calculate total games, wins, and losses.
sum(baseball$Games)
sum(baseball$Wins)
sum(baseball$Losses)

# Answers:
# Games played = 17,722
# Games won = 9,111
# Games lost = 8,528
# The totals do not satisfy Games = Wins + Losses because historical
# baseball records in this dataset include games that ended in ties.

# 13C: Find the greatest positive and negative win-loss differences.
win_loss_difference <- baseball$Wins - baseball$Losses
max(win_loss_difference)
min(win_loss_difference)

# Answers:
# Greatest positive difference = 203
# Greatest negative difference = -194

# 13D: Identify the teams with those differences.
baseball$Franchise[win_loss_difference == max(win_loss_difference)]
baseball$Franchise[win_loss_difference == min(win_loss_difference)]

# Answers:
# Baltimore Orioles have the greatest positive difference (203).
# New York Yankees have the greatest negative difference (-194).

# 13E: Order teams by win percentage.
highest_win_percentages <- baseball[
  order(baseball$Win.Loss.Percent, decreasing = TRUE),
  c("Franchise", "Win.Loss.Percent")
]

lowest_win_percentages <- baseball[
  order(baseball$Win.Loss.Percent),
  c("Franchise", "Win.Loss.Percent")
]

head(highest_win_percentages, 5)
head(lowest_win_percentages, 3)

# Answers:
# Highest: Cincinnati Reds (0.900) and Houston Astros (0.739) are first
# and second. Florida Marlins, San Diego Padres, and San Francisco Giants
# are tied for third at 0.667. Therefore, five teams occupy the top three
# rank positions because of the three-way tie for third.
# Lowest: St. Louis Cardinals (0.333), Chicago Cubs (0.417), and
# New York Yankees (0.454).

# 13F: Calculate the runs-allowed/runs-scored ratio and plot it against
# the percentage of games won.
run_ratio <- baseball$Runs.Allowed / baseball$Runs.Scored

plot(run_ratio, baseball$Win.Loss.Percent,
     xlab = "Runs Allowed / Runs Scored",
     ylab = "Win Percentage",
     main = "Run Ratio and Red Sox Win Percentage",
     pch = 19)

# Optional trendline and model statistics.
trendline <- lm(baseball$Win.Loss.Percent ~ run_ratio)
abline(trendline, col = "red", lwd = 2)
summary(trendline)

# Answer: The relationship is strongly negative. As the ratio of runs
# allowed to runs scored increases, win percentage tends to decrease.
# The estimated line is approximately:
# Win percentage = 1.0176 - 0.5330(run ratio)
# R-squared is approximately 0.794, meaning the ratio explains about
# 79.4% of the variation in win percentage. The slope is statistically
# significant (p < 0.001).