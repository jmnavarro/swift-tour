// Playground - noun: a place where people can play

import UIKit

// generics functions

func swap<T>(inout x: T, inout y: T) {
	let aux = x
	x = y
	y = aux
}

var a = 1
var b = 2
swap(&a, &b)

var c = "abc"
// error: 'String' is not identical to 'Int'
//swap(&a, &c)


//==========================

// typed generic

func search<T: Equatable>(list: [T], value: T) -> Bool {

	for item in list {
		if item == value {
			return true
		}
	}

	return false
}

search([1,2,3], 3)

