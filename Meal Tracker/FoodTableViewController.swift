//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Gwen Thelin on 10/15/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
	static var eggs: Food = Food(name: "eggs", description: "Sunny side up eggs straight from the farm.")
	static var bacon: Food = Food(name: "bacon", description: "Crispy bacon cooked to perfection.")
	static var toast: Food = Food(name: "toast", description: "Wheat toast cooked to a golden brown.")
	
	let breakfastArray: [Food] = [eggs, bacon, toast]
	
	static var cheeseburger: Food = Food(name: "cheeseburger", description: "A classic American burger with melted cheese.")
	static var frenchFries: Food = Food(name: "frenchFries", description: "Crispy french fries cooked to perfection.")
	let lunchArray: [Food] = [cheeseburger, frenchFries]
	
	static var pizza: Food = Food(name: "pizza", description: "A slice of pizza with your choice of toppings.")
	static var breadSticks: Food = Food(name: "breadSticks", description: "Crispy bread sticks cooked to perfection.")
	
	let DinnerArray: [Food] = [pizza, breadSticks]
	
	var meals: [Meal] {
		[Meal(name: "breakfast", food: breakfastArray), Meal(name: "lunch", food: lunchArray), Meal(name: "dinner", food: DinnerArray)]
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		<#code#>
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		<#code#>
	}
}
