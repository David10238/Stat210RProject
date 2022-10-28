df <- read.delim("data.txt")

# fit the entire model
full_factorial <- aov(data = df, Time ~ Rider +
  Board +
  Backpack +
  Rider:Board +
  Rider:Backpack +
  Board:Backpack)
full_factorial[1] # output coefficients
anova(full_factorial)

# remove insignificant interactions
refined <- aov(data = df, Time ~ Rider +
  Board +
  Backpack +
  Board:Backpack)
refined[1] # output coefficients
anova(refined)