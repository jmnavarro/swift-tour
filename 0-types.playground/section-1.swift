import UIKit

var str: String = "abc"

var strInf = 1.0 + 2 + 3.2

var lista: [Int] = [1,2,3]
var listaInf: [AnyObject] = [1,2,3, 3.4]

var hash: [Int:String] = [1:"a", 2:"b", 3:"c"]
var hashInf = [1:"a", 2:"b", 3:"c"]

var otherHash = [1:99, 2:98, 3:97]

// =============================
// Typesafe!!

// error: 'Int' is not identical to 'String'
//hash = otroHash


let constant = 1



// cannot assign to 'let' value 'constante'
// constante = 2

let inmutableArray = [1,2,3]

// immutable value of type '[Int]' only has mutating members named 'append'
//inmutableArray.append(4)

var mutableArray = [1,2,3]
mutableArray += [4,5]



// =============================
// Tuples!!

var values = (1, "a", str)

values.0
values.1
values.2

var values2 = (num:1, char:"a", string:str)

values2.num
values2.char
values2.string

// named and un-named tuples are compatible
values = values2
values2 = values

typealias Point = (x:Int,y:Int)

var p:Point

// =============================
// Closures!!

var closure: Int -> Int

closure = multiplyByTwo
closure(1)

closure = divideByTwo
closure(2)

func multiplyByTwo(valor:Int) -> Int {
	return valor * 2
}

func divideByTwo(valor:Int) -> Int {
	return valor / 2
}

func doOperation(value:Int, f:Int -> Int) -> Int {
	return f(value)
}

doOperation(1, multiplyByTwo)

let x = multiplyByTwo
doOperation(2) {valor in
	return valor * valor
}

doOperation(2) { $0 * $0 }

// Sintactic sugar

func unless(expr:Bool, f:Void -> Void) {
	if !expr {
		f()
	}
}

unless(1 == 1) {
	println("true")
}
