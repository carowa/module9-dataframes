# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.points.won <- c(20, 20, 31, 31, 26, 5, 40, 10, 24, 31, 25, 26, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawks.points.lost <- c(36, 25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
seahawks.data = data.frame(seahawks.points.lost, seahawks.points.won)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
difference.in.points <- seahawks.points.won - seahawks.points.lost
seahawks.data$diff <- difference.in.points
print(seahawks.data)

# Create a new column "won" which is TRUE if the Seahawks won
true.if.won <- (seahawks.points.won > seahawks.points.lost)
seahawks.data$won <- true.if.won
print(seahawks.data)

# Create a vector of the opponent names corresponding to the games played
opponents <- c("Falcons_1", "Saints", "Bills", "Patriots", "Eagles", "Buccaneers", "Panthers"
               , "Packers", "Rams", "Cardinals", "49ers", "Lions", "Falcons_2")
seahawks.data$opponents <- opponents
print(seahawks.data)
View(seahawks.data)

# Assign your dataframe rownames of their opponents
rownames(seahawks.data) <- opponents
print(seahawks.data)

# View your data frame to see how it has changed!
