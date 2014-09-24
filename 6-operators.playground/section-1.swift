import UIKit

class Car {
	var brand:String
	var model:String

	init(brand:String, model:String) {
		self.brand = brand
		self.model = model
	}
}


func == (left: Car, right: Car) -> Bool {
	return left.brand == right.brand && left.model == right.model
}

func ~= (left: Car, right: Car) -> Bool {
	return left.brand == right.brand &&
			left.model[left.model.startIndex] == right.model[right.model.startIndex]
}


let a = Car(brand:"Ferrari", model:"F40")
let b = Car(brand:"Ferrari", model:"F40")
let c = Car(brand:"Ferrari", model:"F50")

a == b
a == c

a ~= c


