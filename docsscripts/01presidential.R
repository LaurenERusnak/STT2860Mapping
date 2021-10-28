# read in MIT presidential election data and write to Rdata format
# created: 2021-10-27
# updated: 2021-10-27

library(tidyverse)
library(readxl)

# source https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/42MVDX

saveRDS(read_excel("dataraw/MITpresident19762020.xlsx", 
                   sheet = 1),
        file = "dataprocessed/MITpresidential.rds")

