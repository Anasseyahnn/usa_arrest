# chargement des librairies 
library(tidyverse)
library(psych)


# chargement de la data 
?USArrests

my_data = USArrests

# inspection de la donnée
my_data %>% 
  head() %>% gt::gt()

# dictionnaire des données 
my_data %>% 
  glimpse()

# statistique des données 

my_data %>% 
  describe() %>% gt::gt()

# manipulation des lignes 
state = rownames(my_data)

my_data = my_data %>% 
  mutate(State = state)

my_data = as_tibble(my_data)

