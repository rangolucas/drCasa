class Infecciosa {
	

	var celulasAmenazadas
		
	constructor(unaCantidadCelulasAmenazadas){
		celulasAmenazadas = unaCantidadCelulasAmenazadas
	}
	
	method pasarUnDia(persona){
		persona.aumentarTemperatura(celulasAmenazadas * 1/1000)
	}
	
	method reproducirse(){
		celulasAmenazadas *= 2
	}
	
	method esAgresiva(persona){
		return persona.diezPorCientoAfectado(celulasAmenazadas)
	}
	
	method esLaMasGrave(listaDeEnfermedades){
		return listaDeEnfermedades.all({enfermedad => self.esMasGraveQue(enfermedad)})
	}
	
	method esMasGraveQue(enfermedad){
		return celulasAmenazadas > enfermedad.celulasAmenazadas()
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
}

class Autoinmune {
	
	var celulasAmenazadas
	var diasDeGestacion = 0
	
	constructor(unaCantidadCelulasAmenazadas){
		celulasAmenazadas = unaCantidadCelulasAmenazadas
	}
	
	method pasarUnDia(persona){
		persona.destruirCelulas(celulasAmenazadas)
		diasDeGestacion += 1
	}
	
	method esAgresiva(persona){
		return diasDeGestacion > 30
	}
	
	method esLaMasGrave(listaDeEnfermedades){
		return listaDeEnfermedades.all({enfermedad => self.esMasGraveQue(enfermedad)})
	}
	
	method esMasGraveQue(enfermedad){
		return celulasAmenazadas >= enfermedad.celulasAmenazadas()
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
}