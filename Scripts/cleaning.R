library(tidyverse)
library(tools)

#list all the data files
CSVs <- list.files("Data/diseases",full.names=T)

#read them in at once, adding a state label extracted from file names
diseases <- read_csv(CSVs, id="state") %>% 
  mutate( state = basename(state),
          state = file_path_sans_ext(state),
          rate = count/population)

#basename("Data/diseases/Iowa.csv")


