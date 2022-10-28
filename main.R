df <- read.delim("data.txt")

full_factorial <- aov(data = df, Time ~ Rider +
  Board +
  Backpack +
  Rider:Board +
  Rider:Backpack +
  Board:Backpack)
summary(full_factorial)
anova_full <- anova(full_factorial)