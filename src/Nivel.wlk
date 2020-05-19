import juego.*
import pantallaInicial.*
import wollok.game.*
import Enemigos.*
import cornelio.*

class Nivel
{
	var enemigos1 = []
	var enemigos2 = []
	var enemigos3 = []
	var property position = game.at(0,0)
	method image() = ""

	method todosLosEnemigos() =  enemigos1 + enemigos2 + enemigos3
	
	method cargarEnemigos()
	{
		self.todosLosEnemigos().forEach{enemigo => game.addVisual(enemigo)
			
		}
	}	
	method cargar(){
		game.addVisual(self)
		game.addVisual(cornelio)
		self.cargarEnemigos()
		//TODO: agregar power ups?, palanca?, items de ayuda?
		self.cargarCondiciones()
	}
	method cargarCondiciones()
	{
		
	}
}

object nivelUno inherits Nivel
{
	override method image () = "nivel1-fondo.png"
	
	override method cargarEnemigos()
	{
		3.times{i => enemigos1.add(new Enemigo(position = game.at(6 + i,0)))}
		3.times{i => enemigos2.add(new Enemigo(position = game.at(6 + i,4)))}
		3.times{i => enemigos3.add(new Enemigo(position = game.at(6 + i,7)))}
		
				
		
		super()	
	}
	override method cargarCondiciones()
	{
		self.todosLosEnemigos().forEach{ enemigo=>
		
			game.onTick(2000,"caminar",{enemigo.caminar()})
			game.onTick(1000, "disparar",{enemigo.disparar()})
			game.onTick(300, "moverDisparo",{enemigo.moverDisparo()})
			
		}
			
	}

	
}