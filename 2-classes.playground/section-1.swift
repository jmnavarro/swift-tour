import UIKit

// Plain old class
// ====================

class MyParentClass {

	let value: String

	init(value: String) {
		self.value = value
	}

	class func x() -> Int {
		return 666
	}

	class func replace(
		string value0: String,
		from   value1: String,
		to     value2: String) {

		//...
	}

	func y() -> (String, Int) {
		var tuple = (name:"abc", age:19)
		return tuple
	}

}

class MyChildClass: MyParentClass {

	init(value1:String, value2:Int) {
		super.init(value:value1)
	}

	override func y() -> (String,Int) {
		let tuple = super.y()

		return ("Value -> \( tuple.0 )", tuple.1)
	}

	func yy() -> String {
		return "yy"
	}
}




// ==================================

MyParentClass.x()

MyParentClass.replace(
	string:"abc",
	from:"b",
	to:"B")

let child = MyChildClass(value1:"abc", value2:2)

child.y()

let cc: MyParentClass = MyChildClass(value1:"abc", value2:2)

// Casting
// ================
if cc is MyChildClass {
	let castedOptional: MyChildClass? = cc as? MyChildClass
	castedOptional?.yy()

	let castedForce: MyChildClass = cc as! MyChildClass
	castedForce.yy()
}

// better...

if let casted = cc as? MyChildClass {
	casted.yy()
}
else {
	// invalid cast
}

