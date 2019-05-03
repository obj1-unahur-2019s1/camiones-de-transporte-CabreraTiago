import cosas.*

object camion {

	const property cosas = []
	const tara = 1000
	const pesoMaximo = 2500

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}

	method pesoTotal() {
		return tara + cosas.sum{ cosa => cosa.peso() }
	}

	method excedidoDePeso() {
		return self.pesoTotal() > pesoMaximo
	}

	method objetosPeligrosos(nivel) {
		return cosas.filter{ cosa => cosa.nivelPeligrosidad() > nivel }
	}

	method objetosMasPeligrososQue(otraCosa) {
		return cosas.filter{ cosa => cosa.nivelPeligrosidad() > otraCosa.nivelPeligrosidad() }
	}

	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return cosas.all{ cosa => cosa.nivelPeligrosidad() < nivelMaximoPeligrosidad }
	}

}

