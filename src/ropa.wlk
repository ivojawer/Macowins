object caja {

	var ventas = []

	method vender(prendas, tipoPago) {
		ventas.add(new Venta(prendas = prendas, tipo = tipoPago, fecha = new Date()))
	}

	method gananciasDia(fecha) = ventas.filter({ venta => venta.fecha() == fecha }).sum({ venta => venta.ganancia() })

}

class Venta {

	var prendas
	var fecha
	var tipo

	method fecha() = fecha

	method ganancia() = tipo.precioFinal(prendas)

}

class TipoPago {

	method precioFinal(prendas) = self.modificacion(prendas.sum({ prenda => prenda.precio() })) 

	method modificacion(precio)
}

object efectivo inherits TipoPago {
	override method modificacion(precio)= precio
}

class Tarjeta inherits TipoPago {

	var cuotas
	var coeficiente // no entiendo muy bien que es esto

	override method modificacion(precio) = cuotas * coeficiente + precio * 1.01

}

class Prenda {

	var precioBase
	var tipo
	var estado

	method precio() = estado.modificacion(precioBase)

	method tipo() = tipo

}

object nueva {

	method modificacion(precioBase) = precioBase

}

class Promocion {

	var descuento

	method modificacion(precioBase) = precioBase - descuento

}

object liquidacion {

	method modificacion(precioBase) = precioBase / 2

}

