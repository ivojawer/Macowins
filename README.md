# Macowins
### Justificaciones
#### Tipos de prenda como strings
Podrian haber sido objetos, pero al no tener ninguna otra reposonsabilidad no me parecia que mostrar un texto lo justifijase.
#### Estado de prenda por composicion
Todavia no es un problema, pero con herencia podria terminar teniendo que hacer combinaciones.
#### efectivo hereda de TipoPago pero no agrega nada
Esto es de lo que menos seguro estoy. No sentia que fuera correcto que Tarjeta heredara de efectivo por dos motivos: 
- queria que efectivo fuese un wko, y principalmente 
- semanticamente efectivo no es mas "general" que tarjeta. 
#### tipo de pago con composicion
Esto es porque me facilitaba contruir el objeto venta (cuando se realiza la venta en caja).
