install.packages("ggplot2")
library(ggplot2)

data24 <- read.csv("C:/Users/Dell/Documents/Honors Thesis/DRA/MP_Pres_2024.csv")

xdata <- data24$x
ydata <- data24$t

ggplot(data.frame(xdata, ydata), aes(x = xdata, y = ydata)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", level = 0.80) +
  labs(title = "X_i on T_i Scatterplot (2024 data)",
       x = "X_i (Minority Share)",
       y = "T_i (Vote Share)"
  )
