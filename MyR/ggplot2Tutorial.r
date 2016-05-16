library(ggplot2)

head(diamonds)

qplot(diamonds$carat,diamonds$price)
qplot(carat,price,data = diamonds)
qplot(carat,price,data = diamonds, colour = clarity)
qplot(carat,price,data = diamonds, geom = c("point","smooth"))
qplot(carat, data = diamonds, geom = "histogram")
qplot(carat, data = diamonds, geom = "histogram", binwidth = 100)

d <- ggplot(diamonds, aes(x=carat, y=price))
d + geom_point()
d + geom_point(aes(colour = carat))


ggplot(diamonds) + geom_histogram(aes(x=price))


# Variations on a Histogram #
p <- ggplot(diamonds, aes(x=price))
p + geom_histogram()
p + stat_bin(geom = "area")
p + stat_bin(geom = "point")
p + stat_bin(geom = "line")

p + geom_histogram(aes(fill = clarity))
p + geom_histogram(aes(y = ..density..))

p <- ggplot(diamonds, aes(x = carat, y = price))
p + geom_point(aes(colour = "green"))
p + geom_point(colour = "green")


qplot(carat,cut,data = diamonds, geom = "jitter", colour = price)




head(diamonds)
