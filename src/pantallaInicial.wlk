import wollok.game.*
import Nivel.*
import juego.*
import Enemigos.*
object pantallainicial {
	method image() = return "Untitled.png"
	method cargar(){
		
		
		keyboard.enter().onPressDo{
			
			game.clear()
			juego.nivel(levelOne)
			
			juego.cargarNivel()
			
		}
	}
	
	
}
