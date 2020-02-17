## ---- include=FALSE-----------------------------------------------------------
knitr::opts_chunk$set(tidy = FALSE,echo = FALSE,
                      comment = "%%",
                      warning = FALSE,
                      message = FALSE)

## ----setup--------------------------------------------------------------------
library(mysimplecompedium)
mysimplecompedium::hello()

## ----load-data, message=FALSE-------------------------------------------------
library(tidyverse)
data <- data(starwars)
knitr::read_chunk("my-external-code.R")

## ----starwars-plot, dependson="load-data", fig.cap="A ggplot of starwars stuff", fig.align='center', cache=TRUE----
starwars %>%
  filter(species == "Human") %>%
  ggplot() +
  aes(x=height,
      y=mass) +
  geom_point()

## ----starwars-tbl, dependson="load-data", cache=TRUE--------------------------
starwars %>%
  filter(species == "Human") %>%
  select(name,
         height,
         mass,
         homeworld) %>%
  knitr::kable(caption="A knit kable table of  starwars data")

