#skim_withouth_charts da un summary del dataset (metadata)
skim_without_charts("palmerpenguins")

#glimps() da una idea rapida del dataset
glimpse(penguins)

#select() para especificar columnas

penguins %>% 
  select(species)

#select(-columna) para sacar columna seleccionada

penguins %>% 
  select(-species)

#rename() para cambiar nombre de la columna 
# rename(nuevo_nombre=viejo_nombre)

penguins %>% 
  rename(island_new=island)

#rename_with(dataset, cambio ) se aplica todas columnas
#tolower = nombre de columna todo minuscula
#toupper = nombre columna todo mayuscula

rename_with(penguins, toupper)

#clean_names de janitos package se asegura que todos los 
#nombres de la columna sean unicos y solo haya letras, numeros y guion bajo
# clean_name(dataset)

clean_names(penguins)