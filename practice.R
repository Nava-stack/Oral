v <- c(1,2,3,4,5)
v <- 1:10
v <- seq(1,10,by=3)


v[1]
v[c(1,4)]
v[-1]
v[3:4]
v[2:3]
v[-c(1,3)]

v[v>5]
v[v%%2 ==0]

v[c] <- 3
v[v>2] <- 0

v <- c(first=3, second=10, third=2)
v["third"]



my <- matrix(1:9,nrow = 3,byrow = TRUE)

my
my[3,2]


my[c(2,3),c(2,3)]
my[2:3,2:3]

my2 <- c(my[c(1,2),1],my[3,c(2,3)])
my <- matrix(my2,nrow = 2,byrow = TRUE)

my[3,3] <- 10
my[,2] <- c(4,5,6)


# Lists
my_list <- list(name="John", age=30, scores=c(90,85,88))
my_list[[1]]
my_list$scores[2]
my_list[["name"]]

mixed <- list(
  name = c("Alice", "Bob"),
  numbers = 1:5,
  matrix = matrix(1:4, nrow=2),
  scorelist = list(math=95, english=88)
)

mixed$scorelist$math
mixed$matrix[,2]


df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(90, 85, 88)
)

df$Name
df[2,3]
df[,1]

df[df$Age > 23,c("Name", "Score")]

df[1,2] <- 24

df$Name[2] <- "Robert"

df$Double <- df$Score * 2 

df <- rbind(df, data.frame(Name="David", Age=28, Score=92, Double=184))

head(df)
tail(df)
str(df)
summary(df)
nrow(df)
ncol(df)




names(df)
rownames(df) <- c("R1", "R2", "R3", "R4")
df["R2", "Score"]
df[["Age"]]
df$Age[df$Name == "Charlie"] <- 23
df$Passed <- df$Score >= 60
df <- df[, c("Name", "Age", "Score", "Double", "Passed")]
df$Name


for (a in 1:10) {
  print(a^2)
}
for (name in df$Name) {
  print(paste("Student:", name))
}

x <- runif(1)
while (x <= 0.8) {
  print(x)
  x <- runif(1)
}







