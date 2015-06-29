// Playground - noun: a place where people can play

import UIKit

enum Weekdays {
	case Monday
	case Tuesday
	case Wednesday
	case Thursday
	case Friday
	case Saturday
	case Sunday

	func isWeekend() -> Bool {
		return self == .Saturday || self == .Sunday
	}
}


let day = Weekdays.Monday

day.isWeekend()

// ========================

enum Weather {

	case Rainy(rainfall:Int)
	case Sunny(temperature:Float)
	case Cloudy

	static func create(rainfall rain:Int, temperature degrees:Float) -> Weather {
		if rain > 1000 {
			return Rainy(rainfall: rain)
		}
		else if degrees > 15 {
			return Sunny(temperature: degrees)
		}
		else {
			return Cloudy
		}
	}

	func icon() -> Character {
		switch self {
			case Rainy:
				return "☔️"
			case Sunny:
				return "☀️"
			case Cloudy:
				return "☁️"
			default:
				return "?"
		}
	}

}

let w = Weather.create(rainfall: 1500, temperature: 12)

w.icon()
