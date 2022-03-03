# modify COVID-19 deaths data and write to .rds format
# filter for "All Ages" in all included State entities
# select COVID-19 Deaths and Total Deaths as outcomes
# created: 2021-10-27
# updated: 2022-02-23
# reformatted code style and added paste0 functionality

library(tidyverse)

date <- "2021_10_27"

dataset <- paste0("dataprocessed/CDCcovid19deaths_", date, ".rds")

saveRDS(
  readRDS(dataset) %>%
    filter(age_group == "All Ages") %>%
    select(data_as_of, state, sex, covid_19_deaths, total_deaths) %>%
    mutate(covid_19_frac = covid_19_deaths / total_deaths),
  paste0("dataprocessed/CDCcovid19deathsTotal_", date, ".rds")
)
