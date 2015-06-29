// Playground - noun: a place where people can play

import UIKit

protocol Encryptable {
	func encrypt() -> String
	func decrypt(value: String) -> Bool

	var encryptionKey: String { get set }
}

class Car {
	var brand: String
	var model: String

	init(brand: String, model: String) {
		self.brand = brand
		self.model = model
	}
}

class SecretCar: Car, Encryptable {

	var encryptionKey: String = ""

	func encrypt() -> String {
		return "xxxx"
	}

	func decrypt(value:String) -> Bool {
		let center = advance(value.startIndex, count(value)/2)

		self.brand = "abc"
		self.model = "xyz"

		return true
	}

}


let batmovil = SecretCar(brand:"Batmobile", model:"Batmovil 2.0 TDI")

batmovil.encrypt()

batmovil.decrypt("abc-xyz")
batmovil.brand
batmovil.model
