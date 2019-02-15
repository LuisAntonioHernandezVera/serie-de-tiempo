base1<-read.csv("C://Users//Alumno-D3//Documents//Libro1.csv")
# abrir base de datos
bas2<- ts(base1,start = 1961,end=2017,frequency=1)
plot(bas2,ylab="% de crecimiento anual del PIB en mexico",xlab="años")
require(datasets)
plot(EuStockMarkets)
ts.plot(EuStockMarkets,col=4:8,xlab="años",ylab="indices principales bolsas de Europa",main="Bolsas Europeas")
legend("topleft",colnames(EuStockMarkets),lty=5,col=4:8,bty="n")
### ejercicio
#bajar tasa de desempleo del 2005 al 2017
#importarla en R
#convertirla en serie de tiempo
#grafica la serie de tiempo con los sig argumentos:xlab,ylab,main y col
#intenta interpretar algunos comentarios dentro de la grafica 
#por ejemplo cuando hay crisis esta tasa se incrementa 
base3<-read.csv("C://Users//Alumno-D3//Documents//tasa de desempleo.csv")
base4<- ts(base3,start=2005,end=2017,frequency = 4)
plot(base4,col=3,xlab="años",ylab="tasa de desempleo en mexico",main="tasas de desempleo en mexico trimestralmente")
desocup<- read.csv("C://Users//Alumno-D3//Documents//tasa de desempleo.csv")
tdesoc<- ts(desocup,start=2005,end=2018,frequency=4)
tdesocmult<- decompose(tdesoc)
plot(tdesocmult)
names(tdesocmult)
# tare extraer los tres componentes sumarlos y eso nos debe dar Yt