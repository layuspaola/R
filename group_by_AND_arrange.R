#arrange() por qué variable queremos ordenar
#arrange(columna) ascendente
#arrange(-columna) descendiente

penguins %>% 
  arrange(-bill_length_mm)

#atribuye una variable para crear un nuevo dataset con nuevo orden

penguins2<- penguins %>% 
  arrange(-bill_length_mm) 
view(penguins2)

#mean() calcula la suma de los valores y los divide por la cantidad
#drop_na() descarta los sin valor(NA)
#mean_bill_length_mm = nuevo nombre de columna
#mean(bill_length_mm) es funcion que llena los valores de nueva columna
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))
  
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm), mean_bl= mean(bill_length_mm))

penguins3<- penguins %>% 
  filter(species == "Adelie")