import cultivos.*
import wollok.game.*

class Aspersor {
	const property image = "aspersor.png"
	var property position = game.center()
	method regar(){
		game.getObjectsIn(self.position()).forEach { obj =>
			if(obj != self) obj.esRegada()
		}
	}
}
object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	var property cosecha = []
	var property oro = 0

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
	method regar(){
		self.verificarQueHayaPlanta()
		game.getObjectsIn(self.position()).forEach { obj =>
			if(obj != self) obj.esRegada()
		}
	}

	method cosechar(){
		self.verificarQueHayaPlanta()
		game.getObjectsIn(self.position()).forEach { planta =>
			if(planta != self && planta.verificarQueSeaAdulta()) 
			{cosecha.add(planta)
			game.removeVisual(planta)}
		}
	}
	method vender(){
		self.oro(cosecha.sum{planta => planta.valor()})
		cosecha.clear()
	}
	method informar(){
		game.say(self, "tengo" + oro + "monedas, y " + cosecha.size() + "plantas para vender.")
	}
}