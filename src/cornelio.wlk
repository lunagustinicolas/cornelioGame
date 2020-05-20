import disparo.*
import wollok.game.*
import juego.*
object cornelio
{	var property position = new Position(x =0 , y =3)
	var property vitalidad = 300 
	var property  disparo = 0
	var property image = "cornelioL.png"
	
	method disparar(){
		if(disparo == 0){
			disparo = new Disparo( position = self.position())
			disparo.aparecer()
			
		}
	}
	method colisionaCon(objeto)
	{	
		var shot = (juego.nivel()).todosLosEnemigos().map{enemigo => enemigo.disparo()}
		
		if(shot.any{bala => bala == objeto })
		{
			self.perderVitalidad()	
			
			objeto.impactar()
		}
	}	

	method perderVitalidad()
	{
		vitalidad -= 10
			
	}
	
}