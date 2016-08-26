//
//  pizzaApp.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 22/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import Foundation
import UIKit

enum PizzaTam: Int {
    case NoSel=0, Chica, Mediana, Grande
    
    init(){
         self = .NoSel
    }
}

enum PizzaMasa: Int {
    case NoSel=0, Delgada, Mediana, Gruesa
    
    init(){
        self = .NoSel
    }
}

enum PizzaQueso: Int {
    case NoSel=0, Cheddar, Mozarella, Parmesano, No_Queso
    
    init(){
        self = .NoSel
    }
}

struct PizzaIngredientes {
    var misIngredientes = ["NoSel":false,
                           "Aceituna": false,
                           "Anchoa":false,
                           "Cebolla":false,
                           "Jamon":false,
                           "Pavo":false,
                           "Pepperoni":false,
                           "Pimiento":false,
                           "Pina":false,
                           "Salchicha":false]
    init(){
           self.misIngredientes["NoSel"]=true
    }
    
    mutating func AddMyIngredient(Ingredient: String, Include: Bool)
    {
        if (self.misIngredientes[Ingredient] == true){
                 self.misIngredientes[Ingredient] = false
                 let filter2 = self.misIngredientes.filter { $0.1 == true }
                 if (filter2.count == 0) {
                           self.misIngredientes["NoSel"]=true
                 }
        } else {
            let filtered = self.misIngredientes.filter { $0.1 == true }
                 if(filtered.count < 5) {
                    self.misIngredientes["NoSel"]=false
                    self.misIngredientes[Ingredient]=Include
            }
        }
    }
    
    func printMyIngredients () -> String {
        let filtered = self.misIngredientes.filter { $0.1 == true }
        var ingredients : String? = ""
        
        for (key, _) in filtered {
            ingredients! += (key == "NoSel") ?"" : "\(key) \n"
        }
        
        return ingredients!
    }
}