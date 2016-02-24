import Foundation

//var number = 993
//if var firstNumber = Int("0991"), secondNumber = Int("45") where firstNumber > secondNumber{
//    firstNumber = 9000000
//    print("number = \(number), firfirstNumber = \(firstNumber)")
//}else {
//    print("hehe")
//}

//var S: String?
//if S == nil{
//    print("S")
//}


// let possibleString: String? = "An optional string."
// let forcedString: String = possibleString!

// let assumedString: String! = "An implicitly unwrapped optional string."
// let implicitString: String = assumedString

// print("dasdasdda")

// if let S = assumedString {
// 	print("hehe" + S)
// }


/* assert */
// let age = -3
// assert(age > 0, "A person's age cann't be negative ")

//enum
//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 何鑫 on 16/2/4.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

// class CalculatorBrain {
// //	var opStack = [op]
// }

// enum Compass {
//     case North,South,East,West
// }

// var directionToHead = Compass.North

// directionToHead = .South
// switch directionToHead{
// case .South:    print("South")
// case .North:    print("North")
// case .East:     print("East")
// case .West:     print("West")
// }

// enum BarCode {
// 	case UPCA(Int, Int ,Int ,Int)
// 	case QRCode(String)
// }

// var productBarcode = BarCode.UPCA(8,19,20,90)
// // print("\(productBarcode)")
// productBarcode = BarCode.QRCode("dasdsadsad")
// // print("\(productBarcode)")

// switch productBarcode {
// case let .UPCA(numberSystem, manufacturer, product, check):
// 	print("UPCA")
// case let .QRCode(productCode):
// 	print("QRCode")
// }

// enum planet: Int {
// 	case Mercury=1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
// }
// let possiblePlanet = planet(rawValue: 7)
// print("\(possiblePlanet)")



// var namesOfString = [1: "hahha", 2 : "hehehda"]
// namesOfString[16] = "sixteen"
// namesOfString = [:]
// print("\(namesOfString)")
// namesOfString[2] = nil
// if let a = namesOfString.removeValueForKey(2) {
// 	print(a)
// }
// for (airportCode, airportName) in namesOfString{
// 	print("\(airportCode), \(airportName)")
// }


// Array
// var threeDoubles = [Double](count : 3, repeatedValue : 0.0)
// var anotherThreeDoubles = [Double](count : 3, repeatedValue : 3.0)
// var sixDoubels = threeDoubles + anotherThreeDoubles
// print("\(sixDoubels)")

// var shoppingList = ["Eggs", "Milks"]
// shoppingList[1] = "gold"
// shoppingList += ["pig", "money"]
// shoppingList[1...2] = ["1"]
// for item in shoppingList{
// 	print("\(item)")
// }

// control flow
// for index in 1...5{
// 	print("\(index) times 5 = \(index * 5)")
// }

//fuction
// func sayHello(to person: String, anotherPerson: String) -> String {
// 	return "Hello \(person) and \(anotherPerson)!"
// }

// print(sayHello(to: "Hexin", anotherPerson: "Mercy"))

// var n = 3
// func arithmeticMean(inout number: Int) {
// 	number = 5
// }

// arithmeticMean(&n)

// print("\(n)")

// func addTwoInts(a: Int, _ b: Int) -> Int {
// 	return a + b
// }

// var mathFunction: (Int, Int) -> Int = addTwoInts
// print("\(mathFunction(1, 3))")

// func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
// 	print("Result: \(mathFunction(a, b))")
// }

// printMathResult(addTwoInts, 1, 2)
// func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
// 	func stepForward(input: Int) -> Int {
// 		return input + 1
// 	} 

// 	func stepBackward(input: Int) -> Int {
// 		return input - 1
// 	}

// 	return backwards ? stepBackward : stepForward
// }

// var currentValue = -4
// let moveNearerToZero = chooseStepFunction(currentValue > 0)
// print("toward zero")
// while currentValue != 0 {
// 	currentValue = moveNearerToZero(currentValue)
// }
// print("zero")

//Closure
// let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// var reversed = names.sort(）{$0 > $1}
// let digitNames = [
//     0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//     5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
// ]
// let numbers = [16, 58, 510]”
// let strings = numbers.map{
// 	(var number) -> String in
// 	var output = ""
// 	while number > 0 {
// 		output = digitNames[number%10]! + output
// 		number /= 10
// 	}
// 	return output
// }

//
//struct Resolution {
//	var width = 0
//	var height = 0
//}
//
//class VideoMode {
//	var resolution = Resolution()
//	var interlaced = false
//	var frameRate = 0.0
//	var name: String?
//}
//
//let someResolution= Resolution()
//let someVideoMode = VideoMode()
//enum Optional<T> {
//    case None
//    case Some(T)
//}
//
//let x: String? = nil
//let x = Optional.None

// struct LevelTracker {
// 	static var highestUnlockedLevel = 1

// 	static func unlockLevel(level: Int) {
// 		if level > highestUnlockedLevel {
// 			highestUnlockedLevel = level
// 		}
// 	}

// 	static func levelIsUnlocked(level: Int) -> Bool {
// 		return level <= highestUnlockedLevel
// 	}

// 	var currentLevel = 1

// 	mutating func advanceToLevel(level: Int) -> Bool {
// 		if LevelTracker.levelIsUnlocked(level) {
// 			currentLevel = level
// 			return true
// 		} else {
// 			return false
// 		}
// 	}
// }

// class Player {
// 	var tracker = LevelTracker()

// 	let playerName: String

// 	func completeLevel(level: Int) {
// 		LevelTracker.unlockLevel(level + 1)
// 		tracker.advanceToLevel(level + 1)
// 	}

// 	init(name: String) {
// 		playerName = name
// 	}
// }

// let p1 = Player(name: "hexin")
// p1.completeLevel(6)
// print("\(LevelTracker.highestUnlockedLevel)")

//enum

// enum TemperatureUnit {
// 	case Kelvin, Celsius, Fahrenheit

// 	init?(symbol: Character) {
// 		switch symbol {
// 		case "F":
// 			self = .Kelvin
// 		case "C":
// 			self = .Celsius
// 		case "K":
// 			self = .Kelvin
// 		default:
// 			return nil
// 		}
// 	}
// }

// var t = TemperatureUnit(symbol: "X")
// if t == nil {
// 	print("return nil")
// }
//
//class Product {
//	let name: String?
//
//	init?(name: String) {
//        self.name = name
//		if name.isEmpty { return nil }
//	}
//}
//
//class CarItem: Product {
//    var quantity: Int?
//    
//    init!(name: String, quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//        if quantity < 1 {return nil}
//    }
//}

//let tp: Int? = 1
//let b = tp.map { (a: Int) -> Int? in
//    if a % 2 == 0 {
//        return a
//    } else {
//        return nil
//    }
//}
//
//if let _ = b {
//    print("not nil")
//} else {
//    print("nil")
//}

//var array = ["1", "2", "3"]
//let c = ",".join(array)
//let b: String = ",".joinWithSeparator(array)

//var a =  CarItem(name: "hehe", quantity: 1)
//var b = 0 as Double
//print(b)

var a = [1, 2, 3]
a.replaceRange(0...1, with: [6, 7, 8, 9])
print("\(a)")


















