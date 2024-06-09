library(tidyverse)
library(magrittr)
library(plotly)
library(htmlwidgets)
library(reticulate)

use_python("/usr/bin/python")

data <- read_delim("data.txt", delim = " ", col_names = c("t", "value")) %>%
  mutate(index = row_number())

p0 <- data %>%
  ggplot(mapping = aes(
    x = index,
    y = value
  )) +
  theme_bw() +
  geom_point() +
  scale_y_continuous(limits = c(0, NA))
# ggsave("plot.png", units = "px", width = 1600, height = 1200)

p1 <- ggplotly(p0)
save_image(p1, "plot.svg", width = 1600, height = 1200)

p2 <- plot_ly(
  data = data,
  x = ~index,
  y = ~value,
  type = "scatter"
)
# save_image(p1, "plot2.svg", width = 1600, height = 1200)
saveWidget(p2, "plot.html")