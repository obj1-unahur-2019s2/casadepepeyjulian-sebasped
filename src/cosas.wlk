object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}




// Más cosas

object kiloMila_largo {
	var  precio = 260
	method precioNuevo(nuevoPrecio) { precio=nuevoPrecio}
	method precio() {return precio}
	method esComida() {return true}
	method esElectrodomestico() {return false}
}

// Versión compacta del anterior, pero son equivalentes.
object kiloMila {
	var property precio = 260
	method esComida() = true
	method esElectrodomestico() = false
}

object salsaTomate {
	var property precio = 90
	method esComida() = true
	method esElectrodomestico() = false
}

object microondas {
	var  precio = 4200
	method precio() {return precio}
	method esComida() {return false}
	method esElectrodomestico() {return true}
}

object kiloCebollas {
	var  precio = 25
	method precio() {return precio}
	method esComida() {return true}
	method esElectrodomestico() {return false}
}

object compu {
	method precio() { return 500*dolar.cotizacion() }	
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object dolar {
	var property cotizacion = 60
}

object packComida {
	var plato
	var aderezo
	
	method configurar(unPlato, unAderezo) {
		plato = unPlato
		aderezo = unAderezo
	}
	
	method precio() {
		return plato.precio() + aderezo.precio()
	}
	
	method esComida() { return true }
	method esElectrodomestico() { return false }
}


object packRegalo {
	var componentes = []
	
	method agregar(unaCosa) {
		componentes.add(unaCosa)
	}
	
	method precio() {
		return componentes.sum({ cosa => cosa.precio() })*0.8
	}
	
	method esComida() { return componentes.all({ c => c.esComida() }) }
	method esElectrodomestico() { return componentes.any({ c => c.esElectrodomestico() }) }
	
}
