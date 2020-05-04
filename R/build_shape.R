library(tidyverse)
library(lubridate)
library(shiny)
library(ggforce)
library(ggplot2)
library(magrittr)


build_circle <- function(origin_x = 0, origin_y = 0, radius = 10) {
  geom_circle(mapping = aes(x0 = origin_x, y0 = origin_y, r = radius))
}


a <- 0
b <- 0
c <- 5
d <- 0
e <- 5
f <- 5

tri_data <- 
  data.frame(
    "x" = c(a, b, c), 
    "y" = c(d, e, f)
  )

ggplot() + 
  geom_shape(
    data = tri_data, 
    mapping = aes(x = x, y = y), 
    fill = NA, 
    color = "black"
    )
