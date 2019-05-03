object knightRider {

	method peso() {
		return 500
	}

	method nivelPeligrosidad() {
		return 10
	}

}

object bumblebee {

	var transformadoEnAuto = true

	method peso() {
		return 800
	}

	method nivelPeligrosidad() {
		return if (transformadoEnAuto) {
			15
		} else {
			30
		}
	}

	method transformar() {
		transformadoEnAuto = not transformadoEnAuto
	}

}

object paqueteLadrillos {

	var property cantidad = 0

	method peso() {
		return cantidad * 2
	}

	method nivelPeligrosidad() {
		return 2
	}

}

object arenaGranel {

	var property peso = 0

	method nivelPeligrosidad() {
		return 1
	}

}

object bateriaAntiaerea {

	var tieneMisiles = true

	method peso() {
		return if (tieneMisiles) {
			300
		} else {
			200
		}
	}

	method nivelPeligrosidad() {
		return if (tieneMisiles) {
			100
		} else {
			0
		}
	}

	method recargar() {
		tieneMisiles = not tieneMisiles
	}

}

object contenedorPortuario {

	var cosas = []

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}

	method peso() {
		return 100 + cosas.sum{ cosa => cosa.peso() }
	}

	method nivelPeligrosidad() {
		return if (cosas.isEmpty()) {
			0
		} else {
			cosas.max{ cosa => cosa.nivelPeligrosidad()}.nivelPeligrosidad()
		}
	}

}

object residuosRadioactivos {

	var property peso = 0

	method nivelPeligrosidad() {
		return 200
	}

}

object embalajeSeguridad {

	var property cosaEnvuelta = null

	method peso() {
		return cosaEnvuelta.peso()
	}

	method nivelPeligrosidad() {
		return cosaEnvuelta.nivelPeligrosidad() / 2
	}

}

