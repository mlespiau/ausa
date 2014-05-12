Análisis autopistas AUSA Buenos Aires
====

El objetivo del presente análisis es responder a algunas cuestiones acerca de la seguridad de las autopistas de Buenos Aires tanto desde el punto de vista vial, como de otro tipos de incidentes. Para esto, tomé los set de datos de http://data.buenosaires.gob.ar/ que contiene información tanto reclamos hechos por particulares como de incidientes en los que tuvo que intervenir Seguridad Vial.

Set de datos de reclamos
----
El primer set de datos que me propuse husmear fue el de reclamos [ausa-reclamos.csv](https://github.com/mlespiau/ausa/blob/master/data/ausa-reclamos.csv) y me llamó la atención entre los reclamos una categoría de reclamos por piedras. Me interesó muchísimo entonces ver la cantidad de reclamos por autopista, y así acercarme a mi objetivo de conocer si existen autopistas más peligrosas que otras pero lamentablemente para los reclamos por piedra, ninguno tiene la información cargada de la ubicación del incidente. Entonces quize responderme otra pregunta: 

### Cómo es la evolución anual de los reclamos por piedras? 
Y esto es lo que encontré:
![Gráfico de evolución anual de los reclamos por piedras](https://raw.githubusercontent.com/mlespiau/ausa/master/plots/reclamosPorPiedras.png)

Se puede apreciar desde el 2006 hacia el 2013 una disminuición de la cantidad de reclamos por piedras. Lamentablemente eso no nos dice demasiado, dado que no sabemos si la dismunuición se debe a que hay menos piedrazos o a que la gente reclama menos este tipo de incidentes. 

Al menos podemos ver si la gente reclama menos en general: 

![Cantidad total de reclamos por año. ](https://raw.githubusercontent.com/mlespiau/ausa/master/plots/reclamosPorAnio.png)

Como se puede apreciar, la cantidad general de reclamos no tiene la misma distribuición que la de reclamos por piedras. Así que podríamos inferir (sin precisión) que o se reclaman menos este tipo de incidientes o que ocurren menos.

Otro tema interesante es ver si hay algún mes más propenso a que se den estos incidentes. Es decir, si hay algún mes particular donde los usuarios de las autopistas reclaman recibir piedrazos. 

![Gráfico de reclamos por piedras desglosados mensualmente ](https://raw.githubusercontent.com/mlespiau/ausa/master/plots/reclamosPorPiedrasMesAnio.png)

### To Do
* Probar como se visualiza mejor, si el grafico desglosado por mes con uno de barras que esten las barras agrupadas por mes, una al lado de otra la de cada año. 
* Otra opcion para el mismo gráfico es resaltar los meses con más incidentes reportados en cada gráfico anual
* Graficar la cantidad de reclamos neta para ver si tiene la misma distribuición que la de reclamos por piedras. 

[![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png )](http://creativecommons.org/licenses/by/4.0/)
Análisis autopistas AUSA Buenos Aires by [Matias Lespiau](https://github.com/mlespiau/ausa) is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/)
Based on a work at [http://data.buenosaires.gob.ar/](http://data.buenosaires.gob.ar/)
