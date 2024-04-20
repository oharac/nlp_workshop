library(tidyverse)
library(synthesisr)

fisheries_refs <- read_refs(here::here('data/individual_files/wos_fisheries_240419.bib'))
forestry_refs <- read_refs(here::here('data/individual_files/wos_forestry_240419.bib'))
water_refs <- read_refs(here::here('data/individual_files/wos_water_240419.bib'))

all_refs <- bind_rows(fisheries_refs, forestry_refs, water_refs) %>%
  distinct()

write_refs(all_refs, format = 'bib', file = here::here('data/wos_240419.bib') )
  
