object trafic {
	var interior 
	var motor
	method capacidad(){ return interior.capacidad()}
	method velocidad(){ return motor.velocidad()}
	method peso(){ return 4000 + interior.peso() + motor.peso()}
	method color(){return "blanco"}
	method colocarInterior(cual){ interior = cual}
	method colocarMotor(cual){ motor = cual}
}

object motorPulenta{
	method velocidad(){return 130}
	method peso(){return 800}
}

object motorBataton{
	method velocidad(){return 80}
	method peso(){return 500}
}

object interiorComodo{
	method capacidad(){return 5}
	method peso(){return 700}
}

object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
}