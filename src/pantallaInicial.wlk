import juego.*
import Nivel.*
import wollok.game.*

object pantallaInicial {

	method image() = "nivel1-fondo.png"

	method cargar() {
		
		game.boardGround(self.image())
		
		keyboard.enter().onPressDo{ 
			juego.cambiarNivel(nivelUno)
			juego.cargar()
		}
	}

}

