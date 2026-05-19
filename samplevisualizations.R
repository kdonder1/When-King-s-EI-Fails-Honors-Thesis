install.packages("ei")
library(ei)


xcel <- read.csv("C:/Users/Dell/Documents/Honors Thesis/Test/ei_data_test_c.csv")

xcel_clean <- subset(
  xcel,
  x > 0.05 & x < 0.95 & n > 50
)

View(xcel_clean)

formula = t ~ x
dbuf = ei(formula=formula,total="n",data=xcel_clean)
summary(dbuf)
eiread(dbuf, "betab", "betaw")
plot(dbuf, "tomog", "betab", "betaw", "xtfit")


names(ei)
install.packages("eiPack")
?ei

View(xcel)



# ggplot:
xdata <- xcel_clean$x
ydata <- xcel_clean$t

ggplot(data.frame(xdata, ydata), aes(x = xdata, y = ydata)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", level = 0.80) +
  labs(title = "X_i on T_i Scatterplot (test data)",
       x = "X_i",
       y = "T_i"
  )
