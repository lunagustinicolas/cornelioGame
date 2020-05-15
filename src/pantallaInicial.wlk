import wollok.game.*
import Nivel.*
import juego.*
import Enemigos.*
object pantallainicial {
	
	method cargar(){
		
		game.boardGround("Untitled.png")
		
		keyboard.enter().onPressDo{
			game.clear()
			juego.nivel(levelOne)
			juego.cargarNivel()
		}
	}
	
	
}
