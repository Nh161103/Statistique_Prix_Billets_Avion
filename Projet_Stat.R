View(Clean_Dataset)


barplot(Clean_Dataset, names.arg =c("Delhi","Mumbai","Bangalore","Kolkata","Hyderabad","Chennai"), main = "Répartition des vols en fonction des villes")
plot(Clean_Dataset$price, Clean_Dataset$airline, xlab = "Compagnie aerienne", ylab = "Prix",main = "Prix en fonction de la compagnie aérienne") 


with(Clean_Dataset, plot(days_left, price, pch = 1, xlab = "Days Left", ylab = "Price", main="les jours entre la reservation et le voyage et le prix")) 
barplot(Clean_Dataset$duration, Clean_Dataset$price, xlab = "Durée (en heures)", ylab = "Prix", main = "Relation entre la durée et le prix des billets") 

flight_counts <- table(Clean_Dataset$destination_city)
barplot(flight_counts, main="Nombre de vols vers chaque ville", ylab="Nombre de vols")


flight_stops<-table(Clean_Dataset$stops)
barplot(flight_stops,main="Nombre de vol pour chaque escale",ylab="Nombre de vols")

flights_deptime<-table(Clean_Dataset$departure_time)
barplot(flights_deptime, main="Nombre de vol selon chaque heure de départ",ylab="Nombre de vols",)


flights_arivtime<-table(Clean_Dataset$arrival_time)
barplot(flights_arivtime, main="Nombre de vol selon chaque heure d'arrivée",ylab="Nombre de vols")

flights_class<-table(Clean_Dataset$class)
barplot(flights_class, main="Répartition des vols selon les classes",ylab="Nombre de vols")

flights_duree<-table(Clean_Dataset$duration)
barplot(flights_duree, main="Répartition des vols selon la durée du vol",ylab="Nombre de vols")

flights_daysleft<-table(Clean_Dataset$days_left)
barplot(flights_daysleft, main="Répartition des achats avant la date de depart",ylab="Nombre d'achats")

flights_prices<-table(Clean_Dataset$price)
plot(flights_prices, main="Nombre de vol pour chaque prix",ylab="Nombre de vols", xlab="Prix du vol")

#library(dplyr)
#prix <- table(Clean_Dataset$price) 
#compagnies <- table(Clean_Dataset$airline)
#plot(compagnies, prix, xlab="Compagnies aériennes", ylab="Prix des vols")

#plot(prix,col='purple', name.arg =c("SpiceJet","AirAsia","Vistara","GO_FIRST","Indigo","Air_India"), main = "Répartition des prix des vols en fonction des compagnies")

stripchart(price~airline, data=Clean_Dataset,vertical = TRUE, pch=1, main ="Répartition des vols des différentes compagnies en fonction du prix")

stripchart(price~departure_time, data=Clean_Dataset,vertical = TRUE, pch=1, main ="Répartition du prix des vols en fonction de l'heure de départ")

stripchart(price~stops, data=Clean_Dataset,vertical = TRUE, pch=1, main ="Répartition du prix des vols en fonction du nombre d'escale(s)")

stripchart(price~arrival_time, data=Clean_Dataset,vertical = TRUE, pch=1, main ="Répartition du prix des vols en fonction de l'heure d'arrivée")

stripchart(price~arrival_time, data=Clean_Dataset,vertical = TRUE, pch=1, main ="Répartition du prix des vols en fonction de l'heure d'arrivée")

plot(price~duration, data=Clean_Dataset, pch=5, main ="Répartition du prix des vols en fonction de la durée")
warnings()

library(corrplot)
head(flights_prices)
mcor(flights_prices, use = "complete.obs")
matrix(flights_prices)
mcor(flights_prices)


cov(x=price, y=null, method=c)


corrplot(mcor, type="upper", order="hclust", tl.col="black", tl.srt=45)
  