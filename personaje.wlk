import cultivos.*
import wollok.game.*


object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	const plantaEnLugar = game.getObjectsIn(self.position())

	method sembrar(planta){
		self.verificarQueNohayPlantas()
		game.addVisual(planta)
		planta.position(self.position())
	}
	method verificarQueNohayPlantas(){
		if(game.getObjectsIn(self.position()).size() > 1){
			self.error("Hay una planta ya sembrada en la celda actual")
		}
	}
	method	verificarQueHayaPlanta(){
		if(game.getObjectsIn(self.position()).size() == 1){
			self.error("No tengo nada que regar")
		}
		}
	method serRegada(){
		
	}
	method regar(){
		self.verificarQueHayaPlanta()
		plantaEnLugar.forEach{planta => planta.esRegada()}
	}
}