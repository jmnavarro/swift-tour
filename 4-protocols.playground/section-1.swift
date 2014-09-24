// Playground - noun: a place where people can play

import UIKit

@objc protocol Encryptable {
	func encrypt() -> String
	func decrypt(value:String) -> Bool

	var encryptionKey:String { get set }
}

class Car {
	var brand:String
	var model:String

	init(brand:String, model:String) {
		self.brand = brand
		self.model = model
	}
}

class SecuredCar: Car, Encryptable {

	var encryptionKey:String = ""

	func encrypt() -> String {
		return "@#@#¢¢∞¬÷8·$·!$%·$"
	}

	func decrypt(value:String) -> Bool {
		let center = advance(value.startIndex, countElements(value)/2)

		self.brand = value.substringToIndex(center)
		self.model = value.substringFromIndex(center.successor())

		return true
	}

}


let batmovil = SecretCar(brand:"Batmobile", model:"Batmovil 2.0 TDI")

batmovil.encrypt()

batmovil.decrypt("abc-xyz")
batmovil.brand
batmovil.model
