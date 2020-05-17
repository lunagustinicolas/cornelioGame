import pantallaInicial.*
import wollok.game.*
import cornelio.*
import Enemigos.*
import juego.*
import disparo.*
class Nivel {

	var enemigos1 = []
	var enemigos2 = []
	var enemigos3 = []
	
	method dificultad(){return 0}
	
	method image() = return ""

	method cargarEnemigos(){
		
		self.todosLosEnemigos().forEach{enemigo => game.addVisual(enemigo) }
		self.todosLosEnemigos().forEach{ enemigo =>
			game.onTick(0.randomUpTo(2000),"disparar", {enemigo.disparar()})
			game.onTick(0, "validar", {enemigo.validarDisparo()})
			}
	}

	method todosLosEnemigos() = return enemigos1 + enemigos2 + enemigos3

	method cargar() {
		//game.boardGround(self.image())
		game.addVisual(cornelio)
	    self.cargarEnemigos()
	}

}

object levelOne inherits Nivel {

	override method image()  = return "nivel1-fondo.png" 
	override method dificultad() = return 1000
	
	override method cargarEnemigos(){
		3.times{n => enemigos1.add(new Enemigos(position =game.at(6 + n,0)))}
		3.times{n => enemigos2.add(new Enemigos(position =game.at(6 + n,3)))}
		3.times{n => enemigos3.add(new Enemigos(position =game.at(6 + n,6)))}
		//TODO: agregar bien las posiciones
		
		super()
	}
	


}

object levelTwo inherits Nivel {

}

object levelThree inherits Nivel {

}

