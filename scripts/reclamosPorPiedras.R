library(sqldf)
library(lattice)

reclamos <- read.csv("./data/ausa-reclamos.csv", header=TRUE, sep=";")
reclamos$fecha <- as.Date(reclamos$fechareclamo, format="%Y-%m-%d %H:%M:%S")
reclamos$anio <- format(reclamos$fecha, format="%Y")
reclamos$mes <- format(reclamos$fecha, format="%m")
# Limpiar los del año 1988 dado que parecen ser datos imprecisos
reclamos <- sqldf("SELECT * FROM reclamos WHERE anio != '1988'")

if (!file.exists("plots")) {
  dir.create("plots");
}

png("plots/reclamosPorPiedras.png", height=680, width=850, bg="transparent")
hist(as.integer(reclamos[reclamos$motivo == "PIEDRAS", c("anio")]), labels=TRUE, right=FALSE, main="Cantidad de reclamos anuales por piedras en las autopistas de Buenos Aires", xlab="Año", ylab="Cantidad de reclamos", col="blue")
dev.off()

png("plots/reclamosPorAnio.png", height=680, width=850, bg="transparent")
hist(as.integer(sqldf("SELECT anio from reclamos where clase = 'RECLAMOS'")[,1]), labels=TRUE, right=FALSE, main="Cantidad de reclamos anuales en las autopistas de Buenos Aires", xlab="Año", ylab="Cantidad de reclamos", col="blue")
dev.off()

reclamosPorMesAnio <- sqldf("SELECT anio, mes, COUNT(*) as cnt FROM reclamos WHERE motivo = 'PIEDRAS' GROUP BY anio, mes ORDER BY anio DESC, mes DESC")
png("plots/reclamosPorPiedrasMesAnio.png", height=680, width=850, bg="transparent")
xyplot(cnt ~ mes | anio, data=reclamosPorMesAnio, as.table=TRUE)
dev.off()