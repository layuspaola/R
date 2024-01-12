#crear vectores para dataframe

names <- c("Paola", "Agustina", "Florencia", "Gabriel")
age <- c(30,30,28,23)

#crea una dataframe
people <- data.frame(names, age)

#agrega columna
mutate(people, age_in_20_years = age + 20)
#
fruta<- c("manzana", "banana", "naranja", "anana" )
ranking<- c(1,4,3,2)
ranking_frutas<- data.frame(fruta, ranking)
