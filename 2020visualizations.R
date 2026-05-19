install.packages("ggplot2")
library(ggplot2)

data20 <- read.csv("C:/Users/Dell/Documents/Honors Thesis/DRA/MP_Pres_2020.csv")

xdata <- data20$x
ydata <- data20$t

ggplot(data.frame(xdata, ydata), aes(x = xdata, y = ydata)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", level = 0.80) +
  labs(title = "X_i on T_i Scatterplot (2020 data)",
  x = "X_i (Minority Share)",
  y = "T_i (Vote Share)"
)



ggplot(data20, aes(x = xdata, y = ydata)) +
  geom_point(size = data20$N / max(data20$N) * 5) +  # scale point size by N
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "X and T Scatterplot (2020 MP Presidential)",
    x = "X_i",
    y = "T_i"
  ) +
  theme_minimal()
