import rodados.*
import pedidos.*
class Dependencia {
	var property flota = []
	var property pedidos = []
	
	method totalPasajeros(){
		return pedidos.sum({pedido => pedido.cantidadPasajeros()})
	}
	method puedeSatisfacer(pedido){
		return flota.any({auto => pedido.puedeSatisfacer(auto)})
	}
	method pedidosQueNoPuedeSatisfacer(){
		return pedidos.filter({pedido => not self.puedeSatisfacer(pedido)})
	}
	method esIncompatibleEnTodos(color){
		return pedidos.all({pedido => pedido.coloresIncompatibles().contains(color)})
	}
	method relajarTodosLosPedidos(){
		pedidos.forEach({pedido => pedido.relajar()})
	}
}

