# create a dataset of western NC county names and write to Rdata format
# created: 2021-10-27
# updated: 2022-02-23
# reformatted code style

library(tidyverse)

# source https://carolinapublicpress.org/296/the-counties-of-western-north-carolina/

saveRDS(
  tibble(county_name = c(
    "avery",
    "buncombe",
    "cherokee",
    "clay",
    "graham",
    "haywood",
    "henderson",
    "jackson",
    "macon",
    "madison",
    "mcdowell",
    "mitchell",
    "polk",
    "rutherford",
    "swain",
    "transylvania",
    "yancey",
    "watauga"
  )),
  "dataprocessed/westernNCcounties.rds"
)
