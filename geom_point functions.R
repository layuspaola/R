#geom_smooth crea una linea 

ggplot(data=penguins)+ 
  geom_smooth(mapping = aes(x= flipper_length_mm, y=body_mass_g))

#para combinar geoms se agrega un "+" despues del codigo geom

ggplot(data=penguins)+ 
  geom_point(mapping = aes(x= flipper_length_mm, y=body_mass_g))+
  geom_smooth(mapping = aes(x= flipper_length_mm, y=body_mass_g))

#si queremos una linea para cada variable se usa linetype=

ggplot(data=penguins)+ 
  geom_smooth(mapping = aes(x= flipper_length_mm, y=body_mass_g, linetype=species))

#color =cut solo colorea los bordes de la barra
ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, color=cut))

#fill=cut llena de color la barra
ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))

#si se agrega otra variable a fill creara stacked bar

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))






