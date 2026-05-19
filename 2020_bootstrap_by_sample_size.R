library(ei)

set.seed(13685)

# Load 2020 data
data2020 <- read.csv("C:/Users/Dell/Documents/Honors Thesis/DRA/MP_Pres_2020.csv")

# Function to test EI convergence via bootstrap
test_bootstrap_size <- function(data, sample_size, B = 200) {
  
  success_vec <- rep(NA, B)
  
  for (b in 1:B) {
    
    # Bootstrap sample
    boot_idx <- sample(1:nrow(data), size = sample_size, replace = TRUE)
    boot_data <- data[boot_idx, ]
    
    # Try running EI
    fit <- tryCatch(
      ei(t ~ x, total = "n", data = boot_data),
      error = function(e) NULL
    )
    
    # Record success (TRUE if model ran, FALSE otherwise)
    success_vec[b] <- !is.null(fit)
  }
  
  # Return proportion of successful runs
  mean(success_vec)
}

# Sample sizes to test
sizes <- c(25, 40, 50, 60, 75, 100)

# Run bootstrap experiment
success_rates <- sapply(sizes, function(s) {
  test_bootstrap_size(data2020, s, B = 200)
})

# Store results
results <- data.frame(
  sample_size = sizes,
  success_rate = success_rates
)

print(results)

# Plot results
plot(sizes, success_rates, type = "b",
     xlab = "Bootstrap Sample Size",
     ylab = "Success Rate",
     main = "2020 EI Success Rate by Bootstrap Sample Size")
