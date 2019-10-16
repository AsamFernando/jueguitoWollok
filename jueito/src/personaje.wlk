import wollok.game.*


object kratos {
	var property position = game.at(0.randomUpTo(game.width() - 1).truncate(0), 0.randomUpTo(game.height() - 1).truncate(0))
	var energia=100
	var pasos=0
	
	
	method image() {return "player.png"}
	
	//metodos para cambiar la posicion del personaje
	method moveUp() {
		if(self.position().y()!=game.height() - 1) {
			self.position(self.position().up(1))
			self.contarPasos()	
		}
	}
	
	method moveDown() { 
		if(self.position().y()!=0) {
			self.position(self.position().down(1))
			self.contarPasos()
		}
	}
	method moveLeft() {
		if(self.position().x()!=0) {
			self.position(self.position().left(1))
			self.contarPasos()
		}
	}
	method moveRight() {
		if(self.position().x()!=game.width() - 1) {
			self.position(self.position().right(1))
			self.contarPasos()
		}
	}
	method decirEnergiaYPasos() {
		game.say(self, "Mi energia es: " + energia + "Pasos: " + pasos)
	}
	method contarPasos() {
		pasos++
		if (pasos%10 == 0) {energia--}
	}
}



















