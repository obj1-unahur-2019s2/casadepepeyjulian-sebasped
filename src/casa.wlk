import cosas.* 

object casaDePepeYJulian {
	const cosas = []

	var property cuentaQueEstaUsando
	
	// opciones para obtener las cosas compradas que son comida,
	// en el método gastoEnComida_2
	// la opción correcta es definir la variable en el método
	
	// no anda porque se ejecuta una sola vez, al levantarse el REPL
	// const comidita = cosas.filter({ cosa => cosa.esComida() }) 
	
	// incorrecto, tiene que ser una variable del método
	//	var comidita
	
	method comprar(cosa) { 
		cosas.add(cosa)
		self.gastar(cosa.precio())   // agregado para la parte 4
	}

	// para la parte 4	
	method gastar(importe) { 
		cuentaQueEstaUsando.extraer(importe)
	}
	
	// para la parte 4	
	method dineroDisponible() { 
		return cuentaQueEstaUsando.saldo()
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


	// el precio total de la comida comprada por la casa. 
	// O sea, hay que contemplar solamente las cosas que son comida
	// A continuación, varias versiones del método, tres correctas y una incorrecta
	method gastoEnComida() {
		return cosas
			.filter({ cosa => cosa.esComida() })
			.sum({ cosa => cosa.precio() })
	}

	// porque a un número no le puedo decir "filter"
	method gastoEnComida_mal() {
		return cosas
			.sum({ cosa => cosa.precio() })
			.filter({ cosa => cosa.esComida() })
	}

	method gastoEnComida_2() {
		var comidita = cosas.filter({ cosa => cosa.esComida() })
		return comidita.sum({ cosa => cosa.precio() })
	}
	
	method comidaComprada() = cosas.filter({ cosa => cosa.esComida() })
	
	// este método ya estaba de la primera parte del ejercicio
	// method electrodomesticosComprados() = cosas.filter({ cosa => cosa.esElectrodomestico() })
	
	method gastoEnComida_3() = self.comidaComprada().sum({ cosa => cosa.precio() })
	
	// indica si la casa compró, al menos, un electrodoméstico de menos de 3000 pesos
	method hayElectrodomesticosBaratos() {
		return self.electrodomesticosComprados().any({ cosa => cosa.precio() < 3000 })
	}
	
	method primerComidaComprada() {
		return self.comidaComprada().first()
	}

	// hacer los que faltan
}
