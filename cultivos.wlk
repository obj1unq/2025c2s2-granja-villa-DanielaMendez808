import wollok.game.*

class Maiz {
	var property position = game.at(1,1)
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "corn_baby.png"
	}
}

class Trigo {
	method position() {
		// TODO: hacer que aparezca donde lo plante Hector
		return game.at(1, 1)
	}
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "wheat_0.png"
	}
}

class Tomaco {
	method position() {
		// TODO: hacer que aparezca donde lo plante Hector
		return game.at(1, 1)
	}
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "tomaco.png"
	}
}