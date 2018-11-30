library(ozbabynames)

oz_anna <- 
  ozbabynames %>%
  filter(name == "Anna") %>%
  group_by(name, year) %>%
  summarise(count = sum(count)) %>%
  arrange(-count)


readr::write_csv(oz_anna, here::here("data/oz_anna.csv"))
