import wollok.game.*
import cornelio.*
class Disparo {
	var property position
	method image(){
		return "popcorn.png"
	}
	method moverDisparo(){
			self.position(self.position().left(1))	
	}
	method validarDisparo(){
		if(self.position().x() <= 1 ){
			return true
				
		}
	}
	
	method fueraDeEscena(){
		//game.removeVisual(self)
		
	}
		
	
}

class DisparoEnemigo inherits Disparo{
	
	override method image(){
		return "popcorn.png"
	}
	
}

class DisparoCornelio inherits Disparo{
	override method image(){
		return "popcorn.png"
	}	
	override method moverDisparo(){
		self.position(self.position().right(1))
	}
	
	
	
	override method validarDisparo(){
		if(self.position().x() >= 14 ){
			self.fueraDeEscena()	
		}
	}
	

	
}