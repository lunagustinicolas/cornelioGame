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
		if(self.position().x() == 0 ){
			self.fueraDeEscena()	
		}
	}
	
	method fueraDeEscena(){
		game.removeVisual(self)
	}
	method impactar()	
	
}

class DisparoEnemigo inherits Disparo{
	
	override method image(){
		return "popcorn.png"
	}
	override method impactar(){
		if(game.uniqueCollider(cornelio)){
			
		}
	}	
}

class DisparoCornelio inherits Disparo{
	override method image(){
		return "popcorn.png"
	}	
	override method moverDisparo(){
		self.position(self.position().right(1))
	}
	
	override method impactar(){}
	
	override method validarDisparo(){
		if(self.position().x() == 14 ){
			self.fueraDeEscena()	
		}
	}
	
	override method fueraDeEscena(){
		game.removeVisual(self)
	}
	
}