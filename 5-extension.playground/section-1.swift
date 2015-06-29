// Playground - noun: a place where people can play

import UIKit


protocol Cacheable {
	func save(#key: String)
}

protocol Encryptable {
	func encrypt() -> String
	func decrypt(value: String) -> Bool

	var encryptionKey: String { get set }
}


extension String: Cacheable {

	func save(#key: String) {
		// save here using self as key
	}

}

extension String : Encryptable {

	func encrypt() -> String {
		return self
	}

	func decrypt(value: String) -> Bool {
		return false;
	}

	var encryptionKey: String {
		get {
			return self
		}
		set {
		}
	}

}


"abc".encrypt().save(key: "a")

/*
extension IntegerType : Encryptable {

	func encrypt() -> String {
		return self.description
	}

	func decrypt(value: String) -> Bool {
		return false;
	}

	var encryptionKey: String {
		get {
			return "abc"
		}
		set {
		}
	}
}
*/