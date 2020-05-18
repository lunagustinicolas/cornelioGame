import wollok.game.*
import Nivel.*
import juego.*
import Enemigos.*
object pantallainicial {
	method image() = return "Untitled.png"
	method cargar(){
		
		game.boardGround(self.image())
		keyboard.enter().onPressDo{
			
			game.clear()
			juego.actualizarNivel(levelOne)
			
			juego.cargarNivel()
			
		}
	}
	
	
}
