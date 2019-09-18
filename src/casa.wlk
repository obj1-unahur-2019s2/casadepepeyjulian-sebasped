import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}	
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any({c => c.esComida()})
	}
	
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	
	method esDerrochona() {
		return cosas.sum({ c => c.precio() }) >= 9000
	}
	
	method electrodomesticosComprados() {
		return cosas.filter({ c => c.esElectrodomestico() })
	}
	
	method malaEpoca() {
		return cosas.all({ c => c.esComida() })
	}
	

	method queFaltaComprar(lista) {
		return lista.filter ( { quiero => not cosas.contains(quiero) } )	
	}
	
	method faltaComida() {
		return cosas.filter({ c => c.esComida() }).size() < 2
	}
}
