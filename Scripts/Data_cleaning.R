library(tidyverse)
library(tools)

#Find the csv files and get the ready to batch import
#add pattern="*.csv" to specifically ref csv files
CSVs <- list.files("Data/diseases",full.names = T) 

#read in all the data at once, adding a var called "State" to ref the file paths
diseases <- read_csv(CSVs,id = "State")

#clean up the State variable to just list the State names (e.g. "Alabama")
diseases <- mutate(diseases, State = basename(State),
                   State = file_path_sans_ext(State),
                   rate=count/population)



