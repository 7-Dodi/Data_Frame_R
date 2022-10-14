#Data Frame
#
#Construindo um Data Frame:
a <- c(18,22,34,54,20)
b <- c("Leandro", "Maria", "João", "Joana", "Alana")
c <- c(FALSE, TRUE, FALSE, TRUE, TRUE)
d <- c(0, 1, 0, 3, 2)
df <- data.frame(Nome=b, Idade=a, Filhos=c, Quant.Filhos=d)
print(df)
is.data.frame(df)
#
#OUTRA FORMA: data.frame(Nome=c("Leandro", "Maria", "João", "Joana", "Alana"),
#Idade=c(18,22,34,54,20), Filhos=c(FALSE, TRUE, FALSE, TRUE, TRUE),
#Quant.Filhos= c(0, 1, 0, 3, 2))
#
#Importando dados:
#CSV:
setwd("C:\\Users\\Usuario\\Documents\\Pasta")
dy <- read.csv("acidentes.csv")
#
#TXt:
library(readr)
setwd("C:\\Users\\Usuario\\Documents\\Pasta")
dy <- read.delim("acidentes.txt")
#
#XLS:
library(readxl)
dy <- read_excel("C:\\Users\\Usuario\\Documents\\Pasta\\acidentes.xlsx")
#
#Algumas funções:
df1 <- mtcars
is.data.frame(df1)
is.data.frame(mtcars)
print(df1) #Imprimir o data frame
head(df1) #Imprimir as seis primeiras linhas
tail(df1) #Imprimir as seis ultimas linhas
nrow(df1)
ncol(df1)
dim(df1)
str(df1) #Apresenta um resumo do data frame
summary(df1) #Apresenta um resumo detalhado de todas as colunas
#
#
#Filtrando variaveis e valores:
#df[linha, coluna]
df1[1:5,1] #
df1[1:5]   #
df1[1:5,]  #Filtrando colunas e linhas
df1[-4,]   #
df1[-4]   #
df1["Mazda RX4", 4]      #
df1["Mazda RX4", "gear"] # Buscando valores atraves da posicao 
df1[5,10]                #
