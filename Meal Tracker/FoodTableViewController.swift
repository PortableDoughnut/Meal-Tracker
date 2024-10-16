//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Gwen Thelin on 10/15/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
	static var eggs: Food = Food(name: "Eggs", description: "Sunny side up eggs straight from the farm.")
	static var bacon: Food = Food(name: "Bacon", description: "Crispy bacon cooked to perfection.")
	static var toast: Food = Food(name: "Toast", description: "Wheat toast cooked to a golden brown.")
	
	let breakfastArray: [Food] = [eggs, bacon, toast]
	
	static var cheeseburger: Food = Food(name: "Cheeseburger", description: "A classic American burger with melted cheese.")
	static var frenchFries: Food = Food(name: "French Fries", description: "Crispy french fries cooked to perfection.")
	let lunchArray: [Food] = [cheeseburger, frenchFries]
	
	static var pizza: Food = Food(name: "Pizza", description: "A slice of pizza with your choice of toppings.")
	static var breadSticks: Food = Food(name: "Bread Sticks", description: "Crispy bread sticks cooked to perfection.")
	
	let DinnerArray: [Food] = [pizza, breadSticks]
	
	var meals: [Meal] {
		[Meal(name: "Breakfast", food: breakfastArray), Meal(name: "Lunch", food: lunchArray), Meal(name: "Dinner", food: DinnerArray)]
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		meals.count
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		meals[section].food.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
		let meal = meals[indexPath.section]
		let food = meal.food[indexPath.row]
		
		var contentConfiguration = cell.defaultContentConfiguration()
		
		contentConfiguration.text = food.name
		contentConfiguration.secondaryText = food.description
		
		cell.contentConfiguration = contentConfiguration
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		meals[section].name
	}
}
