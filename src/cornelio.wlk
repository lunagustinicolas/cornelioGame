import disparo.*
import wollok.game.*
object cornelio
{	var property position = new Position(x =0 , y =3)
	var property vitalidad = 0 
	var property  disparo = 0
	var property image = "cornelioL.png"
	
	method disparar(){
		if(disparo == 0){
			disparo = new Disparo( position = self.position())
			disparo.aparecer()
			
		}
	}	

}