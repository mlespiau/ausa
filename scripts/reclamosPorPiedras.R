reclamos <- read.csv("./data/ausa-reclamos.csv", header=TRUE, sep=";")
reclamos$fecha <- as.Date(reclamos$fechareclamo, format="%Y-%m-%d %H:%M:%S")
if (!file.exists("plots")) {
  dir.create("plots");
}
reclamos$anio <- format(reclamos$fecha, format="%Y")
png("plots/reclamosPorPiedras.png", height=680, width=850, bg="transparent")
hist(as.integer(reclamos[reclamos$motivo == "PIEDRAS", c("anio")]), labels=TRUE, right=FALSE, main="Cantidad de reclamos por piedras en las autopistas de Buenos Aires", xlab="Año", ylab="Cantidad de reclamos", col="blue")
dev.off()
