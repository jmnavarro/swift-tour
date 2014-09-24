import UIKit


var a:Int = 1

// a can't be nil
// a = nil

var b:Int? = 2

b = nil


if b != nil {
	a = b!
}

if let valueOfB = b {
	// only if B has value
	a = valueOfB
}
else {
	// B doesn't have value
}

/* This typical idiom in Java...

	int a = foo()
	if (a != null) {
		// make something safely with a
	}
	
becomes...

	if let aValue = foo() {
		// make something safely with aValue
	}
*/


b = 3

a = b! // <- This is a potentical NPE

let d = b ?? 99 // <- Equivalente to d = (b != null) ? b : 99

//============================
// Optional chaining

func x() -> Int? {
	return nil
}

// if x() returns nil, don't evaluate forward and returns directly nil
x()?.advancedBy(3)

