#facet muestra diferentes tamaños al crear para cada subset un plot
#facet a un solo variable se usa facet_wrap

ggplot(data=penguins)+ 
  geom_point(mapping = aes(
    x= flipper_length_mm, y=body_mass_g, color = species))+
  facet_wrap(~species)


ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=color, fill=cut))+
  facet_wrap(~cut)

#para facer 2 variables se usa facet_grid

ggplot(data=penguins)+ 
  geom_point(mapping = aes(
    x= flipper_length_mm, y=body_mass_g, color = species))+
  facet_grid(sex~species)


  

