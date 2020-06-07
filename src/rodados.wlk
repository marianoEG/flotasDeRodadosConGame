import wollok.game.*

class ChevroletCorsa {
	var property image 
	var property color
	var property position
	var property posicionesGuardadas = [] 
	
	method capacidad(){return 4}
	method velocidad(){return 150}
	method color(){return color}
	method peso(){return 1300}
	
	
	method pasoPor(posicion){return posicionesGuardadas.contains(posicion)}
	
	method pasoPorFila(numero){return posicionesGuardadas.any({posicion => posicion.x() == numero})}
	
	method recorrioFilas(listaDeNumeros){return listaDeNumeros.all({numero => self.pasoPorFila(numero)})}
	
	
	method moverDerecha(){self.position(self.position().right(1)) posicionesGuardadas.add(self.position())}
	method moverIzquierda(){self.position(self.position().left(1)) posicionesGuardadas.add(self.position())}
	method moverArriba(){self.position(self.position().up(1)) posicionesGuardadas.add(self.position())}
	method moverAbajo(){self.position(self.position().down(1)) posicionesGuardadas.add(self.position())}
}

object rojo{}
object verde{}
object negro{}
object azul{}
object beige{}
object blanco{}