// Playground - noun: a place where people can play

import UIKit

enum Weather {

	case Rainy(rainfall:Int)
	case Sunny(temperature:Float)
	case Cloudy

	func season() -> String {
		switch self {
			case .Sunny(let temperature) where temperature > 20:
				return "summer!"

			case .Sunny(let temperature) where temperature > 10:
				return "spring or fall"

			case .Rainy(_),
				.Cloudy,
				.Sunny(_):
				return "the winter is coming!"

			default:
				return ""
		}
	}

}

var w = Weather.Rainy(rainfall: 1500).season()

w = Weather.Sunny(temperature:25).season()

w = Weather.Sunny(temperature:5).season()


