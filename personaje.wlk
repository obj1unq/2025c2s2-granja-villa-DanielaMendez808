import cultivos.*
import wollok.game.*


object personaje {
	var property position = game.center()
	const property image = "fplayer.png"

	method sembrar(planta){
		game.addVisual(planta)
		planta.position(self.position())
	}
}