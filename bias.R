install.packages("Tmisc")
data("quartet")
View(quartet)

#sd=standar deviation (cual lejos el valor esta de mean)
#cor=correlation(cuan fuerte es la relacion entre dos variables)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y), sd(y), cor(x,y))

ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method = lm, se=FALSE) + facet_wrap(~set)

install.packages("datasauRus")

install.packages("SimDesign")

#bias determina si hay sesgo en data, mas cerca de 0 menor bias

actual_temp<- c(68.3,70,72.4,71,67,70)
predicted_temp<- c(67.9, 69, 71.5, 70, 67, 69)

bias(actual_temp, predicted_temp)

#sample() toma una muestra aleatoria de elementos en un dataset