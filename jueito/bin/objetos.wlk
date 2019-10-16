import wollok.game.*


class Caja {
	var property position = game.at(0.randomUpTo(game.width() - 1).truncate(0), 0.randomUpTo(game.height() - 1).truncate(0))
	
	method image() { return "market.png" }
	method movete() {
		self.position(game.at(0.randomUpTo(game.width() - 1).truncate(0), 0.randomUpTo(game.height() - 1).truncate(0)))
	}
}