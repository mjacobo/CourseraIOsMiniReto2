//
//  VCSelIngredientes.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 22/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import UIKit

class VCSelIngredientes: UIViewController {
    @IBOutlet weak var pizzaSelIngre: UILabel!
    var pizzaSelIngredientes: PizzaIngredientes! = PizzaIngredientes.init()
    var delegate:SelIngredientsProtocol?
    
    override func viewWillAppear(animated: Bool) {
                pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func SelPizzaJamon(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Jamon", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaPimiento(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Pimiento", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }

    @IBAction func SelPizzaPavo(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Pavo", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }

    @IBAction func SelPizzaAceituna(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Aceituna", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaPepperoni(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Pepperoni", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaSalchicha(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Salchicha", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaPina(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Pina", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaAnchoa(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Anchoa", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    @IBAction func SelPizzaCebolla(sender: AnyObject) {
        pizzaSelIngredientes.AddMyIngredient("Cebolla", Include: true)
        pizzaSelIngre.text = pizzaSelIngredientes.printMyIngredients()
        print(pizzaSelIngredientes.printMyIngredients())
        delegate?.setOrderIngredients(pizzaSelIngredientes)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
