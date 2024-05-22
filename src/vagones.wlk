class VagonPasajero {
	const property largo
	const property ancho
	const property banio = true
	var property ordenado = true
	
	method cantidadDePasajeros() = largo * if(ancho <= 3){8}else{10} - if(not ordenado){15}else{0}
	method cantidadMaximaDeCarga() = if(banio){300}else{800}
	method pesoMaximo() = 2000 + 80 * self.cantidadDePasajeros() + self.cantidadMaximaDeCarga()
	method esPopular() = self.cantidadDePasajeros() > 50
	method esCarguero() = self.cantidadMaximaDeCarga() >= 1000
	method mantenimiento() = ordenado
}

class VagonCarga {
	const property cargaMaximaIdeal
	var property maderaSuelta
	
	method cantidadDePasajeros() = 0
	method cantidadMaximaDeCarga() = cargaMaximaIdeal - 400 * maderaSuelta
	method pesoMaximo() = 1500 + self.cantidadMaximaDeCarga()
	method banio() = false
	method esPopular() = self.cantidadDePasajeros() > 50
	method esCarguero() = self.cantidadMaximaDeCarga() >= 1000
	method mantenimiento(){
		maderaSuelta = 0.max(maderaSuelta - 2)
	}
}

class VagonDormitorio {
	const property compartimientos
	const property camasXCompartimiento
	
	method cantidadDePasajeros() = compartimientos * camasXCompartimiento
	method cantidadMaximaDeCarga() = 1200
	method pesoMaximo() = 4000 + 80 * self.cantidadDePasajeros() + self.cantidadMaximaDeCarga()
	method banio() = true
	method esPopular() = self.cantidadDePasajeros() > 50
	method esCarguero() = self.cantidadMaximaDeCarga() >= 1000
	method mantenimiento() = true
}