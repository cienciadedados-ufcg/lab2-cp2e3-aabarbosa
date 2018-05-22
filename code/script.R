library(tidyverse)
library(here)

respostas = read_csv("data/tweets.csv", 
                     col_types = cols(.default = col_character(), 
                                      nota_partido = col_integer(), 
                                      votos_recebidos = col_integer()))

respostas %>% 
    write_csv(here("data/respostas-merepresenta-2016.csv"))
