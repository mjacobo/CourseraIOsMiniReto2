//
//  VCSelTamano.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 22/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//


import UIKit

class VCSelTamano: UIViewController {

    @IBOutlet weak var pizzaSelTama: UILabel!
    var pizzaSelTam:PizzaTam! = PizzaTam.init()
    var delegate:CommProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pizzaSelChica(sender: AnyObject) {
        pizzaSelTam = PizzaTam.Chica
        pizzaSelTama.text="\(pizzaSelTam)"
        print("\(pizzaSelTam)")
        delegate?.setOrderTam(pizzaSelTam)
    }
    
    @IBAction func pizzaSelMediana(sender: AnyObject) {
        pizzaSelTam = PizzaTam.Mediana
        pizzaSelTama.text="\(pizzaSelTam)"
        print("\(pizzaSelTam)")
        delegate?.setOrderTam(pizzaSelTam)

    }
    
    @IBAction func pizzaSelGrande(sender: AnyObject) {
        pizzaSelTam = PizzaTam.Grande
        pizzaSelTama.text="\(pizzaSelTam)"
        print("\(pizzaSelTam)")
        delegate?.setOrderTam(pizzaSelTam)
    }

    
   /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "goNextPage"
        {
            let destinationVC = segue.destinationViewController as? ViewController
            destinationVC?.pizzaOrderTam = pizzaSelTam
        }
        
    }
   */
    

}
