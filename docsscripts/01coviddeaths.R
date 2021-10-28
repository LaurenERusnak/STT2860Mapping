# read in CDC provisional COVID-19 deaths data and write to Rdata format
# created: 2021-10-27
# updated: 2021-10-27

library(tidyverse)
library(readxl)

# source https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-by-Sex-and-Age/9bhg-hcku

saveRDS(read_excel("dataraw/CDCcovid19deaths20211027.xlsx", 
                   sheet = 1,
                   skip = 1,
                   col_names = c("data_as_of",
                                 "start_date",
                                 "end_date",
                                 "group",
                                 "year",
                                 "month",
                                 "state",
                                 "sex",
                                 "age_group",
                                 "covid_19_deaths",
                                 "total_deaths",
                                 "pneumonia_deaths",
                                 "pneumonia_and_covid19_deaths",
                                 "influenza_deaths",
                                 "pneumonia_influenza_covid19_deaths",
                                 "footnote")),
        file = "dataprocessed/CDCcovid19deaths.rds")

