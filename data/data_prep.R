library(tidyverse)
library(synthesisr)

refs_files <- list.files(here::here('data/individual_files'), pattern = '.bib', full.names = TRUE)

all_refs <- read_refs(refs_files)

write_refs(all_refs, format = 'bib', file = here::here('data/wos_240419.bib') )
  
