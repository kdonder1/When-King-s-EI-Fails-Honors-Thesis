library(ei)

data20 <- read.csv("C:/Users/Dell/Documents/Honors Thesis/DRA/MP_Pres_2020.csv")
data20_clean <- data20[data20$n > 0, ]

# Try with simulate=FALSE to skip the problematic importance sampling
results <- ei(
  formula = t ~ x,
  total = "n",
  data = data20_clean,
  simulate = FALSE  # This skips the integration that's failing
)

# Get maximum likelihood estimates
summary(results)

plot(results, "tomog")



# plogis function to convert values from logit to actual probability
betaB <- plogis(1.165931043)
betaW <- plogis(0.4474010)

cat("\nBeta_B:", betaB, "\n")
cat("Beta_W:", betaW, "\n")