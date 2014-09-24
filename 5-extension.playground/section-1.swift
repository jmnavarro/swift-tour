// Playground - noun: a place where people can play

import UIKit


protocol Cacheable {
	func saveToCache() -> String
}

extension String: Cacheable {

	func saveToCache() -> String {
		// save here using self as key
		return self
	}

}

extension String {

	func saveToCache() -> String {
		return "!"
	}

	func encrypt() -> String {
		return "@#@#¢¢∞¬÷8·$·!$%·$"
	}

}


"abc".saveToCache()
