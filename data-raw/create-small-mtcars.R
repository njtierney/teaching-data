library(ggplot2)

ggplot(mtcars,
       aes(x = hp,
           y = mpg)) + 
  geom_point()

library(tidyverse)
mtcars_small <- mtcars %>%
  select(hp,
         mpg,
         cyl)

readr::write_csv(mtcars_small, "data/mtcars_small.csv")
