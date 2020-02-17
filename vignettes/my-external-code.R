#----starwars-plot
starwars %>%
  filter(species == "Human") %>%
  ggplot() +
  aes(x=height,
      y=mass) +
  geom_point()


#----starwars-tbl
starwars %>%
  filter(species == "Human") %>%
  select(name,
         height,
         mass,
         homeworld) %>%
  knitr::kable(caption="A knit kable table of  starwars data")
