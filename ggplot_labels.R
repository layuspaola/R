#labs = label

ggplot(data=penguins)+ 
  geom_point(mapping = aes(
    x= flipper_length_mm, y=body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle = "Sample of Three Species",
       caption = "Data Collected by Dr. Kristen Gorman")+
  annotate("text", x=220, y=3500, label="The gentoo are the largest", 
           color="purple", fontface= "bold", size=4.5, angle=25)

#annotate sirve para escribir dentro del grid del grafico
#x=220 significa que se ubica en valor 220 del eje x
#fontface= "bold" dice que tipo de fuente de letra utiliza


p<- ggplot(data=penguins)+ 
  geom_point(mapping = aes(
    x= flipper_length_mm, y=body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle = "Sample of Three Species",
       caption = "Data Collected by Dr. Kristen Gorman")

a<-  annotate("text", x=220, y=3500, label="The gentoo are the largest", 
              color="purple", fontface= "bold", size=4.5, angle=25)

p + a

#ggsave("nombre del archivo.extension = "tres pinguinos.png")

ggsave("three Penguins species.png")