import UIKit


class MyClass {

	let constant = 1

	var storedProperty:Int = 3

	var readOnlyProperty: String {
		return ""
	}

	var computedProperty: String {
		get {
			return ""
		}
		set {
			// store 'newValue' somewhere
		}
	}

	var observedPropery: Int = 2 {
		willSet(newValue) {
			println("before change to \(newValue)")
		}
		didSet(newValue) {
			println("after change to \(newValue)")
		}
	}

	lazy var lazyStoredProperty = MyClass.heavyComputation()

	subscript(index:String) -> String {
		return index + "!"
	}

	class func heavyComputation() -> Int {
		return 0
	}

}

let x = MyClass()
x["hello"]






