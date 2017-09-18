import enfermedades.*

class Persona {

	var enfermedadesQueLoAfectan = #{}
	var celulasTotales
	var temperatura
	
	constructor (unaTemperatura, unasCelulasTotales){
		temperatura = unaTemperatura
		celulasTotales = unasCelulasTotales
	}
	
	method diezPorCientoAfectado(cantidadCelulasQueAmenaza){
		return cantidadCelulasQueAmenaza >= celulasTotales * 1/10
	}
	
	method pasarUnDia(){
		enfermedadesQueLoAfectan.forEach{enfermedad => enfermedad.pasarUnDia(self)}
	}
	
	method sumaCelulasAfectadas(listaDeEnfermedades){
		return listaDeEnfermedades.map{enfermedad => enfermedad.celulasAmenazadas()}.sum()
	}
	
	method enfermedadesAgresivas(){
		return enfermedadesQueLoAfectan.filter{enfermedad => enfermedad.esAgresiva(self)}
	}
	
	method enfermedadMasGrave(){
		return enfermedadesQueLoAfectan.find{enfermedad => enfermedad.esLaMasGrave(enfermedadesQueLoAfectan)}
	}
	
	method enfermedadesQueLoAfectan(setEnfermedades){
		enfermedadesQueLoAfectan = setEnfermedades
	}
	
	method enfermedadesQueLoAfectan(){
		return enfermedadesQueLoAfectan
	}
	
	method estaEnfermoDe(enfermedad){
		return enfermedadesQueLoAfectan.contains(enfermedad)
	}
	
	method enfermarse(enfermedad){
		enfermedadesQueLoAfectan.add(enfermedad)
	}
	
	method aumentarTemperatura(unaTemperatura){
		temperatura = 45.min(temperatura + unaTemperatura)
	}

	method destruirCelulas(cantidadCelulas){
		celulasTotales -= cantidadCelulas
	}
}