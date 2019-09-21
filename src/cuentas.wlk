// dejamos la estructura de los tres objetos
// falta completar los métodos
object cuentaCorriente {
	method depositar(cuanto) {}
	method extraer(cuanto) {}
	method saldo() {}
}

object cuentaConGastos {
	method depositar(cuanto) {}
	method extraer(cuanto) {}
	method saldo() {}
}

object cuentaCombinada {
	var property cuentaPrimaria
	var property cuentaSecundaria
	method depositar(cuanto) {}
	method extraer(cuanto) {}
	method saldo() {
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
}
