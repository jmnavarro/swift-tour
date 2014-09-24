import UIKit

class MyParentClass {

	public let value:String

	public init(value:String) {
		self.value = value
	}

	public class func x() -> Int {
		return 666
	}

	public class func replace(
		string value0 = "",
		from   value1:String,
		to     value2:String) {

		//...
	}

	public func y() -> (String,Int) {
		var tuple = (name:"abc", age:19)
		return tuple
	}

}

public class MyChildClass: MyParentClass {

	init(value1:String, value2:Int) {
		super.init(value:value1)
	}

	override public func y() -> (String,Int) {
		let tuple = super.y()

		return ("Value -> \( tuple.0 )", tuple.1)
	}

	public func yy() -> String {
		return "yy"
	}
}




// ==================================

MyParentClass.x()

MyParentClass.replace(
	string:"abc",
	from:"b",
	to:"B")

MyParentClass.replace(string:"abc", from:"b")

let c = MyChildClass(value1:"abc", value2:2)

c.y()

// error: 'is' test is always true
//if c is MyChildClass {
//}

// error: 'MyParentClass' is not a subtype of 'MyChildClass'
//if c is MyParentClass {
//}

let cc:MyParentClass = MyChildClass(value1:"abc", value2:2)

if cc is MyChildClass {
	let casted = cc as? MyChildClass
	casted.yy()
}

// better...

if let casted = cc as? MyChildClass {
	casted.yy()
}
else {
	// invalid cast
}

