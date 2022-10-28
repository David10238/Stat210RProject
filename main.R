df <- read.delim("data.txt")

# fit the entire model
full_factorial <- aov(data = df, Time ~ Rider +
  Board +
  Backpack +
  Rider:Board +
  Rider:Backpack +
  Board:Backpack)
summary(full_factorial)
anova_full <- anova(full_factorial)

# remove insignificant interactions
refined <- aov(data = df, Time ~ Rider +
  Board +
  Backpack +
  Board:Backpack)
summary(refined)
anova_refined <- anova(full_factorial)