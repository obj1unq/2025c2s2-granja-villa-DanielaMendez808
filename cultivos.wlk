import wollok.game.*

class Maiz {
	var property position = game.at(1,1)
	var property image = "corn_baby.png"
	method esRegada(){
		if (self.image() == "corn_baby.png"){
			self.image("corn_adult.png")
		}
	}
	method verificarQueSeaAdulta(){
		return self.image() == "corn_adult.png"
	}
	method valor(){
		return 150
	}
}

class Trigo {
	var property position = game.at(1, 1)
	var property image = "wheat_0.png"
	method esRegada(){
		if (self.image() == "wheat_0.png"){
			self.image("wheat_1.png")
		} else if (self.image() == "wheat_1.png"){
			self.image("wheat_2.png")
		} else if (self.image() == "wheat_2.png"){
			self.image("wheat_3.png")
		} else if (self.image() == "wheat_3.png"){
			self.image("wheat_0.png")
		}
	}
	method verificarQueSeaAdulta(){
		return self.image()== "wheat_2.png" || self.image()== "wheat_3.png"
	}
	method valor(){
		if (self.image() == "wheat_2.png"){
			return 100
		} else {
			return 200
		}
	}
}
class Tomaco {
	var property position = game.at(1, 1)
	var property image = "tomaco.png"
	method esRegada(){
		if (self.position().y()==9){
			self.position(game.at(self.position().x(),self.position().y()-1))
		} else {
			self.position(game.at(self.position().x(),self.position().y()+1))
		}
	}
	method verificarQueSeaAdulta(){
		return true
	}
	method valor(){
		return 80
	}
}