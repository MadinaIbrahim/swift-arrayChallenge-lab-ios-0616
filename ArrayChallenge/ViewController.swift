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
    
    let numberOfItemsNeeded = [6, 4, 12, 4]
    let itemsNeeded = ["Bananas", "Apples", "Eggs", "Rolls"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingList = makeShoppingList(itemsNeeded, quantityOfItems: numberOfItemsNeeded)
        
    }
    
    
    func makeShoppingList(items: [String], quantityOfItems: [Int]) -> [String] {
        //that underscore _ means that the first argument to this function will have 
        //NO external name 'itemsNeeded' when it is called which happens by default.
        //The second argument to this function WILL have an external name of quantityOfItems when it is called.
        
        var localArray: [String] = []
        
        for (index, item) in items.enumerate() {
            
            localArray.append("\(index + 1). " + "\(quantityOfItems[index]) " + item)
            
        }
        return localArray
    
    }
}
