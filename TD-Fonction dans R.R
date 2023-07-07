# 1) Creation d'une fonction indiquant si un nombre est a la fois un multiple
#  de 3 et de 5 
# fmultiple

fmultiple= function(x) {
  if(x%%3==0 & x%%5==0) {
    print("ce nombre est a la fois un multiple de 3 et 5")
  }
  if(x%%3!=0 & x%%5!=0) {
    print(" ce nombre n'est pas un multiple de 3 ni de 5")
  }
}
x=15
x=16
x=45

fmultiple(15)
fmultiple(16)
fmultiple(45)

# 2) Creation d'une fonction retournant tous les nombres d'un vecteur etant
# a la fois un multiple de 3 et de 5 
v=15:30
fmultiple_vec=function(x) {
  y=NULL
  for (i in 1:length(x)) {
    if(x[i]%%3==0 & x[i]%%5==0 ) {
      y[i]="ce nombre est a la fois un multiple de 3 et 5"
    }
    if(x[i]%%3!=0 & x[i]%%5!=0 ){
      y[i]="ce nombre n'est pas un multiple de 3 ni de 5 "
    }
  }
  return(y)
}
fmultiple_vec(v)

# 3) Regression lineaire

data= read.table(file.choose(), header = TRUE, sep = "\t" )
names(data)
y=data$Y
x=data$X

# Modele lineaire

modele=lm(y~x)

summary(modele)
resultat_reg=summary(modele)
resultat_reg

resultat_reg$coefficients
#fonction affichant seulement les coefficients (estimates)
resultat_reg$coefficients[,1]

#fonction affichant seulement les statistiques de students
resultat_reg$coefficients[,3]



