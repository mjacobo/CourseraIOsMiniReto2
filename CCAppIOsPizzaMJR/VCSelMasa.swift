//
//  VCSelMasa.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 22/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import UIKit

class VCSelMasa: UIViewController {
    @IBOutlet weak var SelMasaButton: UILabel!
    var pizzaSelMas:PizzaMasa! = PizzaMasa.init()
    var delegate:SelMasaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelPizzaDelgada(sender: AnyObject) {
        pizzaSelMas = PizzaMasa.Delgada
        SelMasaButton.text="\(pizzaSelMas)"
        print("\(pizzaSelMas)")
        delegate?.setOrderMasa(pizzaSelMas)
    }
    
    @IBAction func SelPizzaMediana(sender: AnyObject) {
        pizzaSelMas = PizzaMasa.Mediana
        SelMasaButton.text="\(pizzaSelMas)"
        print("\(pizzaSelMas)")
        delegate?.setOrderMasa(pizzaSelMas)
    }
    
    @IBAction func SelPizzaGruesa(sender: AnyObject) {
        pizzaSelMas = PizzaMasa.Gruesa
        SelMasaButton.text="\(pizzaSelMas)"
        print("\(pizzaSelMas)")
        delegate?.setOrderMasa(pizzaSelMas)
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
