object jonny {
	
	var vehiculo = jeep
	var cantidadMisiones = 0
	
	method vehiculo() = vehiculo 
	method cantidadMisiones() = cantidadMisiones
	
	method vehiculo(_vehiculo) {
		 vehiculo = _vehiculo	
	} 
	
	method realizarMision(mision) {
		//vehiculo.reparar()
		vehiculo.manejar(mision.km())
		cantidadMisiones += 1
	}
	
	method toString() = "jonny (" + vehiculo + ")"
}

object rescatarRyan {
	method km() = 50
	//igual que => method km() { return 50 } 
}

object jeep {
	var combustible = configuracionInicial.combustibleInicial()
	
	method combustible() = combustible
	
	method manejar(km) {
		combustible = 0.max(combustible - km / 2)
	}
	
}

object apache {
	var desgasteHelices = 0
	
	method desgasteHelices() = desgasteHelices
	
	method manejar(km) {
		desgasteHelices += km
	}
	
}

object configuracionInicial {
	method combustibleInicial() = 100
}

