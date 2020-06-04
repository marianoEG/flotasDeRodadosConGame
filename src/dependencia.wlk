import rodados.*
import trafic.*
class Dependencia {
	const rodados = []
	var empleados = 0
	method setEmpleados(cuanto){empleados = cuanto}
	method agregarAFlota(rodado){rodados.add(rodado)}
	method quitarDeFlota(rodado){rodados.remove(rodado)}
	method pesoTotalFlota(){return rodados.sum({rodado => rodado.peso()})}
	method estaBienEquipada(){ return (rodados.size() >= 3) and rodados.all({rodado=>rodado.velocidad() >= 100})}
	method capacidadTotalEnColor(color){return rodados.filter({rodado=> rodado.color() == color}).sum({r=>r.capacidad()})}
	method colorDelRodadoMasRapido(){return rodados.max({rodado => rodado.velocidad()}).color()}
	method capacidadFaltante(){return empleados - rodados.map({rodado => rodado.capacidad()}).sum()}
	method esGrande(){return empleados >= 40 and rodados.size() >= 5}
}
