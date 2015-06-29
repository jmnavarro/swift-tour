import UIKit

var str: String = "abc"

var str1 = str

str += "z"

// Type inference
//===============
var inf = 1.0 + 2 + 3.2

var lista: [Int] = [1,2,3]
var listaInf = [1,2,3, 3.4]

var hash: [Int:String] = [1:"a", 2:"b", 3:"c"]
var hashInf = [1:"a", 2:"b", 3:"c"]

var otherHash = [1:99 as Int, 2:98.1, 3:97]

// Typesafe!!
//=============
// hash = otherHash


let constant = 1

// Inmutability
//=============
//
// cannot assign to 'let' value 'constante'
// constante = 2

let inmutableArray = [1,2,3]

// immutable value of type '[Int]' only has mutating members named 'append'
//inmutableArray.append(4)

var mutableArray = [1,2,3]
mutableArray += [4,5]



// Tuples!!
//==================

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


// Higher order functions (aka closures)
// ======================================

var closure: Int -> Int

func multiplyByTwo(valor: Int) -> Int {
	return valor * 2
}

func divideByTwo(valor: Int) -> Int {
	return valor / 2
}

closure = multiplyByTwo
closure(1)

closure = divideByTwo
closure(2)

// Closures como parámetros

func doOperation(value: Int, f: Int -> Int) -> Int {
	return f(value)
}

doOperation(1, multiplyByTwo)

// Trailing closures

let x = multiplyByTwo
doOperation(2) { value in
	return value * value
}

doOperation(2) { $0 * $0 }

func doOtherOperation(f: Int -> Int) -> Int {
	return f(0);
}

doOtherOperation { $0 + 1 }

// Syntactic sugar

func foreach(list: [AnyObject], f: AnyObject -> Void) {
	for item in list {
		f(item)
	}
}

foreach([1,2,3]) {
	println($0)
}

func unless(value: Bool, f: Void -> Void) {
	if !value {
		f()
	}
}

unless(1 == 2) {
	println("1 is not 2")
}

