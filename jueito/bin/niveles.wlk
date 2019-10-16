import wollok.game.*
import objetos.*
import personaje.*

object nivel1 {
	method cargarCajas() {
		(0..0.randomUpTo(5).truncate(0)).forEach{ e => game.addVisual(new Caja()) }
	}
	method configurarTeclas() {
		keyboard.up().onPressDo({kratos.moveUp()})
		keyboard.down().onPressDo({kratos.moveDown()})
		keyboard.left().onPressDo({kratos.moveLeft()})
		keyboard.right().onPressDo({kratos.moveRight()})
		keyboard.space().onPressDo({kratos.decirEnergiaYPasos()})
	}
	method configurarNivel() {
		self.configurarTeclas()
		self.cargarCajas()
		game.addVisual(kratos)
		self.chocarCaja()
	}
	method chocarCaja() {
		game.whenCollideDo(kratos, { c => c.movete() })
	}
}
