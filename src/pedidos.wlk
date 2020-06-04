import rodados.*
class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadPasajeros
	var property coloresIncompatibles = []
	method velocidadRequerida(){return distanciaARecorrer / tiempoMaximo}
	method puedeSatisfacer(auto){
		return (auto.velocidad()-self.velocidadRequerida()) >= 10 and auto.capacidad() >= cantidadPasajeros and
		coloresIncompatibles.all({color=>color != auto.color()})
	}
	method acelerar(){tiempoMaximo -= 1}
	method relajar(){tiempoMaximo +=1}
	
}
