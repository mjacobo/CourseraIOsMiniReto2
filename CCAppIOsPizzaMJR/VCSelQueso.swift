//
//  VCSelQueso.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 22/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import UIKit

class VCSelQueso: UIViewController {
    @IBOutlet weak var SelQuesoLable: UILabel!
    var pizzaSelQueso : PizzaQueso! = PizzaQueso.init()
    var delegate:SelQuesoProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelPizzaCheddar(sender: AnyObject) {
        pizzaSelQueso = PizzaQueso.Cheddar
        SelQuesoLable.text="\(pizzaSelQueso)"
        print("\(pizzaSelQueso)")
        delegate?.setOrderQueso(pizzaSelQueso)
    }
    

    @IBAction func SelPizzaMozarella(sender: AnyObject) {
        pizzaSelQueso = PizzaQueso.Mozarella
        SelQuesoLable.text="\(pizzaSelQueso)"
        print("\(pizzaSelQueso)")
        delegate?.setOrderQueso(pizzaSelQueso)
    }

    
    @IBAction func SelPizzaParmesano(sender: AnyObject) {
        pizzaSelQueso = PizzaQueso.Parmesano
        SelQuesoLable.text="\(pizzaSelQueso)"
        print("\(pizzaSelQueso)")
        delegate?.setOrderQueso(pizzaSelQueso)
    }
    
    @IBAction func SelPizzaNoQueso(sender: AnyObject) {
        pizzaSelQueso = PizzaQueso.No_Queso
        SelQuesoLable.text="\(pizzaSelQueso)"
        print("\(pizzaSelQueso)")
        delegate?.setOrderQueso(pizzaSelQueso)
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
