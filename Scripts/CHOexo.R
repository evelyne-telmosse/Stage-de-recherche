#load packages -------

install.packages("tidyverse")
install.packages("here")
install.packages("googlesheets")
install.packages("readxl")

pacman::p_load(googlesheets,gsheet,csv,tidyverse)

library(tidyverse)
library(here)
library(googlesheets)
library(readxl)
library(gsheet)

#Transformer un fichier Google sheet en cvs ------

url_en <- "https://docs.google.com/spreadsheets/d/1J7J2EeLUjywnsc7Q95oI8i1_JJRyowvb_4cXAuk10Js/edit#gid=575002003"
typeform_en <- read.csv(text=gsheet2text(url_en, format='csv'), stringsAsFactors=FALSE)
write_csv(typeform_en, "choexo.csv")

metachoexo <- read.csv("choexo.csv")

metachoexo_new <- select(metachoexo, ID, author, ref, year, design, oxi_rate_mean, oxi_rate_sd, n, sex, age, mass, timing, nutr_state, dose_g, dur_exerc, ing_rate, dose_g_kg, dose_pDE, dur_observ, VO2max, VO2_exerc, VO2_spec, pVO2max, DE_kcal, concentration)

 