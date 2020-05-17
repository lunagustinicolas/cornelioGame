import wollok.game.*
import disparo.*
object cornelio {

	var property position = new Position(x = 0, y = 1)
	var property image = "cornelioL.png"
	var property disparo = null
	method moverDisparo(){
		if(game.hasVisual(disparo)){
			disparo.moverDisparo()
		}
		
	}
	method disparar(){
		if (disparo == null){
			
			disparo = new DisparoCornelio(position = self.position())
			game.addVisual(disparo)
			disparo.moverDisparo()
		
		}
	}
}

