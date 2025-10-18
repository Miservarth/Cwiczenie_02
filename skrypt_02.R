# To jest pierwszy skrypt stworzony na cwiczeniach "wprowadzenie do analizy R
# Autor: Remigiuesz Pielech
# Data utowrzenia: 7-10-2025
# Data ostatniej aktualizacji: 14-10-2025\

#### 1. proste dzialania matematyczne ####
2 + 2

23 * 16

132/34^2


#### 2. tpyp danych w R ####

#### zmienne numeryczne ####

5

2+5

#### zmienne znakowe (character) ####

"Abies alba"

'dzik'

"klon zwyczajny"

# zmienne logiczne

23 < 2

43<100

#. zmienne 
#### 3.1 przypisywanie zmiennych liczbowych ####

#### x <- 3 ####
y = 9
y/x
z1 <- x + y
z2 <- x * y

#### 3.2 przypisywanie zmiennych znakowych ####

moje_imie <- "michal"
moje.imie <- "michal"
Moje_imie <- "michal"
moje.imie * 3


#### 4. wektory ####

# wektor to podstawowa jednostka danych 
# so tworzenia wektorów wykorzystujemy funkcje c()
wektor_1 <- c(2,5,4)
wektor_2 <- c("aaa", "bbb", "ccc")
wektor_3 <- c(TRUE, FALSE, TRUE)

macierz_1 <- cbind(wektor_1, wektor_2, wektor_3)

dane_1 <- data.frame(wektor_1,wektor_2,wektor_3)

numer <- c(1,2,3,4,5,6,7,8,9,10)
gatunek <- c("dab szypulkowy", "buk zwyczajny", "brzoza brodawkowa", "dab pospolity", "grab zwyczajny", "olsza czarna", "klon jawor", "dab szypulkowy", "buk zwyczajny","klon jawor")
wysokosc <- c(20,30,30,24,50,38,82,13,32,67)            
piersnica_cm <- c(55,23,54,24,76,24,73,13,43,92)
stan <- c("dobry", "zly","dobry","zly","dobry","dobry","dobry","dobry","dobry","zly")
zainfekowany <- c(FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE)
dane_232 <- data.frame(numer,gatunek,wysokosc,piersnica_cm,stan,zainfekowany)




#### w <- c(4,3,52,22,4,2,4,2,4,5,6,3,6,4,3,1,5,4,6,4) ####
sum(w)
mean(w)
w>5





#### CWICZENIA 02 ####

numer_2 <- 1:10

numer_3 <- seq(from = 0, to = 100, by = 11)


month.name

month.abb

letters
LETTERS

#### ZADANIE 2.1 ####

miesiace <- 1:12
month.name
month.abb

tabela_mies <- data.frame(miesiace, month.name, month.abb)



#### 6. Indeksowanie wektorów ####

month.name[1]
month.name[1:3]
month.name[c(1:3,7:9)]
month.name[c(1:3,6,8,12)]


LETTERS[c(16,12,1,14,20,19)]


#### zmiana elementow wektora ####

wek 
wektor_3 <- c(TRUE, FALSE, TRUE)
wektor_3[2:3] <- c(T, F)
wektor_3


#### zadanie2.3 ####
gatunek[4] <- c("dab zwyczajny")
wysokosc[6] <- c(19)
stan[2] <- c(2)
dane_233 <- data.frame(numer,gatunek,piersnica_cm,stan,zainfekowany)

#### 8. INDEKSOWANIE_RAMEK DANYCH ####
dane_232[3,2]
dane_232[ ,2]
dane_232[ ,2:4]
dane_232[ c(1,4,7),]

dane_232$stan

####

iris
iris_df <- as.data.frame(iris)

table(iris_df$Species)

mean(iris_df$Petal.Length)
min(iris_df$Petal.Length)
range(iris_df$Petal.Length)


#### zad2.4 ####

iris_setosa <- iris_df[1:50,]
mean(iris_setosa$Sepal.Length)


iris_versicolor <- iris_df[51:100,]
mean(iris_versicolor$Sepal.Length)

iris_vergenica <- iris_df[101:150, ]
mean(iris_vergenica$Sepal.Length)

dlugosc_iris <- data.frame(iris_setosa,iris_vergenica,iris_versicolor)




reg_data <- read.csv("regeneration_ord.csv")
table(reg_data$Species)
Accer.pseu <- reg_data[1:50, ]
Alnus.inc <- reg_data[51:100, ]
Salix <- reg_data[101:150, ]

Accer.pseu<- reg_data[1:50, ]
hist(Accer.pseu$Dist_to_channel,
    xlab = "odleglosc od koryta",
    xlim = c(0,50), 
    main = "Accer pseudoplatanus",
    col = "green",
    border = "white",
)
Alnus.inc<- reg_data[1:50, ]
hist(Alnus.inc$Dist_to_channel,
     xlab = "odleglosc od koryta",
     xlim = c(0,50), 
     main = "Alnus incana",
     col = "blue",
     border = "white",
)
Salix<- reg_data[1:50, ]
hist(Salix$Dist_to_channel,
     xlab = "odleglosc od koryta",
     xlim = c(0,50), 
     main = "Salix sp.",
     col = "yellow",
     border = "white",
)
  

setwd("C:/Users/Sebastian/")
