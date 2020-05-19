import cornelio.*
import Enemigos.*
import wollok.game.*

class Disparo
{
	var property image = "popcorn.png"
	var property position

		method aparecer()
		{
			game.addVisual(self)
				
		}
		method moverDisparo()
		{
			
		}
		
}

class DisparoCornelio inherits Disparo
{
	
}

class DisparoEnemigo inherits Disparo
{
	override method moverDisparo()
	{	
		// TODO: agregar validaciones
		
		self.position(self.position().left(1))	
	}
}
