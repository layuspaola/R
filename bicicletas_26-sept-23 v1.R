library(readr)
bici_trips_v3 <- read_csv("carpeta_r/bici_trips_v3.csv")
View(bici_trips_v3)

#se reemplaza los NA por lo que serianlos valores de sábado
bici_trips_v2[is.na(bici_trips_v2)] <- "sábado"

#Se crea columna con el tiempo de los viajes
bici_trips_v2$ride_length <- (as.double(difftime(bici_trips_v2$ended_hour, bici_trips_v2$started_hour))) /60
View(bici_trips_v2)

#Cambio de tipo de dato para ride_lenght

bici_trips_v2$ride_length <- as.numeric(as.character(bici_trips_v2$ride_length)) 

#Se crea un resumen del tiempo de viaje 

summary(bici_trips_v2$ride_length)

#El resultado del resumen demuestra que hay viajes con tiempo negativo, por lo que se procede a sacar los viajes que sean menores a 0

bici_trips_v2<- bici_trips_v2[!( bici_trips_v2$ride_length<0),]

aggregate(bici_trips_v2$ride_length ~ bici_trips_v2$member_casual, FUN = mean)
aggregate(bici_trips_v2$ride_length ~ bici_trips_v2$member_casual, FUN = median)

#agrupa por tipo de cliente y dia
viajes_semana<- bici_trips_v2 %>% 
  group_by(member_casual, dia ) %>%  
  View(viajes_semana)

#se grafica los datos obtenidos en la agrupacion entre los miembros y casuales 
ggplot(data = viajes_semana)+
  geom_col( aes (x=dia, y=number_of_rides, fill= member_casual), position ="dodge")+
  labs(title="Dia de la Semana: Miembros VS Casuales ")

bici_trips_v2 %>%  
  group_by(member_casual, mes) %>%  
  summarise(total_rides = n(),`average_duration_(mins)` = mean(ride_length)) %>% 
  arrange(member_casual) %>% 
  ggplot(aes(x=mes, y=total_rides, fill = member_casual)) + geom_col(position = "dodge")+
  labs(title="Clientes: Miembros VS Casuales ", 
       subtitle = "clientes en los meses enero, febrero y marzo de 2020")


bici_trips_v2 %>%  
  group_by(member_casual, ride_length, dia) %>%  
  summarise(`average_duration_(mins)` = mean(ride_length)) %>% 
  arrange(member_casual) %>% 
  ggplot(aes(x=member_casual, y=ride_length, fill = member_casual)) + geom_col(position = "dodge")+
  labs(title="Clientes: Miembros VS Casuales ", 
       subtitle = "clientes en los meses enero, febrero y marzo de 2020")

  


#se crea una jerarquia para los dias de la semama
bici_trips_v2$dia <- ordered(bici_trips_v2$dia, levels=c("domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"))

#se crea una jerarquia para los meses
bici_trips_v2$mes <- ordered(bici_trips_v2$mes, levels=c("enero", "febrero", "marzo"))









#cuenta la cantidad de viajes de miembros vs casuales
viajes<- bici_trips_v2 %>% 
  count(member_casual)
View(viajes)

write.csv(bici_trips_v2, "bici_trips_v3.csv")


