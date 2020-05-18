import wollok.game.*
import disparo.*

class Enemigos {

	var property image = "obrerosyroundup.png"
	var property position = new Position(x = 0, y = 1)
	var property disparo = null

	method disparar() {
		if (disparo == null) {
			disparo = new DisparoEnemigo(position = self.position())
			game.addVisual(disparo)
			disparo.moverDisparo()
		} else {
			if (game.hasVisual(disparo)) {
				disparo.moverDisparo()
			}
		}
	}

	method moverDisparo() {
		if (disparo != null) {
			disparo.moverDisparo()
		}
	}

	method validarDisparo() {
		if (disparo != null) {
			if (game.hasVisual(disparo)) {
				if(disparo.validarDisparo()){
					game.removeVisual(disparo)
					self.disparo(null)
				}
			}
		}
	}

}

