library("palmerpenguins")
ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g))

#funciones en anterior codigo: ggplot, geom_points y aes
#ggplot para decir que dataset usar ggplot(data=dataset)
#se usa el signo + para agregar capas
#geom: el objeto geometrico a usar<- geom_(funcion)
#mapping=aes dice que tipo de estetica usar
#mapping significa matching una variable en dataset con la estetica especifica
#x=flipper ubica datos dentro de flipper en linea x

#color + especies
ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g, color = species))

# shape + especies

ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g, shape = species))

#color+ shape+especies

ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g, shape = species, color= species))

#color + size + shape + especie
ggplot(data=penguins)+ 
  geom_point(mapping = aes(
    x=flipper_length_mm, y=body_mass_g, shape=species, 
    color=species, size=species))
#si queremos mantener en blanco y negro podemos usar aes= alpha para controlar transparencia

ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g, alpha=species))

#si queremos que todos los puntos sean de un color se coloca la variable y funcion color fuera de aes()
ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g),color = "purple")
