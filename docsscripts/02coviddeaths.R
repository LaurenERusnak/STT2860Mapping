# modify COVID-19 deaths data and write to Rdata format
# filter for "All Ages" in all included State entities
# select COVID-19 Deaths and Total Deaths as outcomes
# created: 2021-10-27
# updated: 2021-10-27

library(tidyverse)

saveRDS(readRDS("dataprocessed/CDCcovid19deaths.rds") %>% 
          filter(age_group == "All Ages") %>% 
          select(data_as_of, state, sex, covid_19_deaths, total_deaths) %>% 
          mutate(covid_19_frac = covid_19_deaths / total_deaths),
        "dataprocessed/CDCcovid19deathsTotal.rds")

