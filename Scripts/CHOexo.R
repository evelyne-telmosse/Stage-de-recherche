#load packages -------

install.packages("tidyverse")
install.packages("here")
install.packages("googlesheets")
install.packages("readxl")
install.packages("RColorBrewer")

pacman::p_load(googlesheets,gsheet,csv,tidyverse,here,RColorBrewer)

library(tidyverse)
library(here)
library(googlesheets)
library(readxl)
library(gsheet)

#Transformer un fichier Google sheet en cvs ------

url_en <- "https://docs.google.com/spreadsheets/d/1J7J2EeLUjywnsc7Q95oI8i1_JJRyowvb_4cXAuk10Js/edit#gid=575002003"
typeform_en <- read.csv(text=gsheet2text(url_en, format='csv'), stringsAsFactors=FALSE)
write_csv(typeform_en, "metachoexo.csv")

choexo <- read.csv("metachoexo.csv")

#Réorganisation des données
choexo_new <- choexo %>% 
  select(ID:year, design:pEn_sd) %>%
  mutate(VO2_exerc=str_extract(VO2_exerc,"[0-9].[0-9]+"))
  arrange(desc(dose_g))


#Exploration des relations entre les données------
# Taux d'oxydation vs dose en grammes
library("ggrepel")
  
  
choexo_new %>%
  filter(year %in% 2010:2020) %>%
  ggplot(aes(x=oxi_rate_mean, y=dose_g,label=author), color=year) +
  geom_point() +
    geom_smooth(method = lm) +
  geom_text_repel()

#plus la dose est élevée, plus le taux d'oxydation est élevé
choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020")) %>%
  ggplot(aes(x=oxi_rate_mean, y=dose_g, color=year)) +
  geom_boxplot()

choexo_new$year <- as.factor(choexo_new$year)
choexo_new$mass <- as.factor(choexo_new$mass)
choexo_new$dose_g <- as.factor(choexo_new$dose_g)
choexo_new$oxi_rate_mean <- as.factor(choexo_new$oxi_rate_mean)
glimpse(choexo_new)

#Taux d'oxydation et concentration
choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=oxi_rate_mean, y=concentration, color=year)) +
  geom_violin() +
  geom_point()
 
choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=oxi_rate_mean, y=concentration, color=year)) +
  geom_point() +
  geom_smooth(method = "lm") +
  stat_regline_equation() +
  stat_cor(label.y = 150) +
  theme_cowplot()

choexo_new %>%
  select_if(.,is.numeric) %>%
  cor(use = "pairwise.complete.obs") %>%
  corrplot()
  

library(ggpubr)
library(cowplot)
library(corrplot)

choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=oxi_rate_mean, color=year, fill=year)) +
  geom_histogram() 

#Taux d'oxydation et taux d'ingestion avec masse en couleur
choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=oxi_rate_mean, y=ing_rate, size=mass)) +
  geom_point()

#Taux d'oxydation selon la masse et la dose en gramme

choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=oxi_rate_mean, y = mass, color = dose_g)) +
  geom_point()



#Dose en gramme selon la masse avec le taux d'oxydation en couleur
choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=dose_g, y = mass, color = oxi_rate_mean)) +
  geom_point()

#comment changer le taux d'oxydation afin qu'il soit en intervalle??

choexo_new %>%
  na.omit() %>%
  filter(year %in% c("2010","2011","2012","2013","2014","2015", "2016","2017", "2018","2019","2020"),
         concentration < 200) %>%
  ggplot(aes(x=dose_g, y=mass, color=oxi_rate_mean)) +
  geom_point() +
  geom_smooth() +
  theme_classic() +
  scale_color_gradient(low = "blue", high = "red")

ggsave(here("Data","relation_dose_mass_oxirate.png"))

       