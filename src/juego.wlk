import wollok.game.*
import pantallaInicial.*
import Nivel.*

object juego {
	var property nivel = pantallainicial
		
	method comenzar(){
		nivel.cargar()
	}
	method actualizarNivel(level){
		nivel = level
	}
	method cargarNivel(){
		nivel.cargar()
	}	
}
