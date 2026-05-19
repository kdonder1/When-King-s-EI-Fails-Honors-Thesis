library(ei)

data24 <- read.csv("C:/Users/Dell/Documents/Honors Thesis/DRA/MP_Pres_2024.csv")
data24_clean <- data24[data24$n > 0, ]

# Try with simulate=FALSE to skip the problematic importance sampling
results <- ei(
  formula = t ~ x,
  total = "n",
  data = data24_clean,
  simulate = FALSE  # This skips the integration that's failing
)

# Get maximum likelihood estimates
summary(results)

plot(results, "tomog", "betab", "betaw", "xtfit")



data24_clean



# plogis function to convert values from logit to actual probability
betaB <- plogis(0.3591954)
betaW <- plogis(0.6947922)

cat("\nBeta_B:", betaB, "\n")
cat("Beta_W:", betaW, "\n")
