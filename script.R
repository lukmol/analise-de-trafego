# Script da Analise de dados


dados<-read.csv2('Behavior of the urban traffic of the city of Sao Paulo in Brazil.csv')
pacman::p_load(tidyverse,magrittr,ggplot2)


dados %<>% tibble()  %>% rename("lentidao" = Slowness.in.traffic....)
dados %>% select(lentidao) %>% summarise(media = mean(lentidao))
