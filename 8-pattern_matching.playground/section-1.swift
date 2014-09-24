// Playground - noun: a place where people can play

import UIKit

enum Weather {

	case Rainy(rainfall:Int)
	case Sunny(temperature:Float)
	case Cloudy

}

var w = Weather.Rainy(rainfall: 1500)
queEstacionEs(w)

w = Weather.Sunny(temperature:25)
queEstacionEs(w)

w = Weather.Sunny(temperature:5)
queEstacionEs(w)

func queEstacionEs(w:Weather) -> String {
	switch w {
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
