// struct Color {
// 	let red, green, blue: Double
// 	init(red: Double, green:Double, blue: Double) {
// 		self.red = red
// 		self.green = green
// 		self.blue = blue
// 	}

// 	init(white: Double) {
// 		self.red = self.green = self.blue = white
// 	}
// }


// let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
// let halfGray = Color(white: 0.5)

// class Food {
// 	var name: String

// 	init(name: String) {
// 		self.name = name
// 	}

// 	convenience init() {
// 		self.init(name: "[Unnamed]")
// 	}

// }

// class RecipeIngredient: Food {
// 	var quantity: Int

// 	init(name: String, quantity: Int) {
// 		self.quantity = quantity
// 		super.init(name: name)
// 	}

// 	override convenience init(name: String) {
// 		self.init(name: name, quantity: 1)
// 	}
// }

// class ShoppingListItem: RecipeIngredient {
// 	var purchased = false

// 	var description: String {
// 		var output = "\(name) x \(quantity)-"
// 		output += purchased ? "✔" : "✘"
// 		return output
// 	}
// }

// var breakfastList = [
// 	ShoppingListItem(),
// 	ShoppingListItem(name: "Bacon"),
// 	ShoppingListItem(name: "egg", quantity: 6)
// ]
// breakfastList[0].name = "milk"
// breakfastList[0].quantity = 3
// for item in breakfastList {
// 	print(item.description)
// }







