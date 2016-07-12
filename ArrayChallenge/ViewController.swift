//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    
    let numberOfItemsNeeded : [Int] = [6, 4, 12, 4]
    let itemsNeeded : [String] = ["Bananas", "Apples", "Eggs", "Rolls"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeShoppingList(itemsNeeded, quantityOfItems: numberOfItemsNeeded)
        print(shoppingList)
    }
    
    
    func makeShoppingList(_: [String], quantityOfItems: [Int]) -> [String] {
        //that underscore _ means that the first argument to this function will have 
        //NO external name 'itemsNeeded' when it is called which happens by default.
        //The second argument to this function will have an external name of quantityOfItems when it is called.
        
        for (index, item) in quantityOfItems.enumerate() {
            shoppingList.append("\(index + 1). \(quantityOfItems[index]) \(item)")
        }
        return shoppingList
    }
}
