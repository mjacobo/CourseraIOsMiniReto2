//
//  ViewController.swift
//  CCAppIOsPizzaMJR
//
//  Created by Mauricio Jacobo Romero on 21/08/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CommProtocol, SelMasaProtocol, SelQuesoProtocol, SelIngredientsProtocol {
    @IBOutlet weak var pizzaTamSelButton: UIButton!
    @IBOutlet weak var pizzaMasaSelButton: UIButton!
    @IBOutlet weak var pizzaQuesoSelButton: UIButton!
    @IBOutlet weak var pizzaIngredientsSelButton: UIButton!
    var pizzaOrderTam : PizzaTam?   = PizzaTam.init()
    var pizzaOrderMas : PizzaMasa?  = PizzaMasa.init()
    var pizzaOrderQue : PizzaQueso? = PizzaQueso.init()
    var pizzaOrderIng : PizzaIngredientes? = PizzaIngredientes.init()
    @IBOutlet weak var labelPizzaTamano: UILabel!
    @IBOutlet weak var labelPizzaMasa: UILabel!
    @IBOutlet weak var labelPizzaQueso: UILabel!
    @IBOutlet weak var labelPizzaIngredientes: UILabel!
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        
        if (segue.identifier == "SegueTamano"){
        let selTamano = segue.destinationViewController as! VCSelTamano
            selTamano.delegate = self
        }
        
        if (segue.identifier == "SegueMasa"){
        let selMasa = segue.destinationViewController as! VCSelMasa
            selMasa.delegate = self
        }
        
        if (segue.identifier == "SegueQueso"){
            let selQueso = segue.destinationViewController as! VCSelQueso
            selQueso.delegate = self
        }
        
        if (segue.identifier == "SegueIngredientes"){
            let selIngre = segue.destinationViewController as! VCSelIngredientes
            selIngre.delegate = self
            selIngre.pizzaSelIngredientes = self.pizzaOrderIng
        }
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        print("\(pizzaOrderTam)")
        if (pizzaOrderTam != PizzaTam.NoSel) {
            let TamaIma : UIImage = UIImage.init(named: "Button-1b - OK.png")!
            pizzaTamSelButton.setBackgroundImage(TamaIma,forState: UIControlState.Normal)
        }
        
        print("\(pizzaOrderMas)")
        if (pizzaOrderMas != PizzaMasa.NoSel) {
            let MasaIma : UIImage = UIImage.init(named: "Button-2b - OK.png")!
            pizzaMasaSelButton.setBackgroundImage(MasaIma,forState: UIControlState.Normal)
        }
        
        print("\(pizzaOrderQue)")
        if (pizzaOrderQue != PizzaQueso.NoSel) {
            let MasaIma : UIImage = UIImage.init(named: "Button-3b - OK.png")!
            pizzaQuesoSelButton.setBackgroundImage(MasaIma,forState: UIControlState.Normal)
        }
        
        print(pizzaOrderIng?.printMyIngredients())
        if (pizzaOrderIng?.misIngredientes["NoSel"] == false) {
            let MasaIma : UIImage = UIImage.init(named: "Button-4b - OK.png")!
            pizzaIngredientsSelButton.setBackgroundImage(MasaIma,forState: UIControlState.Normal)
        } else {
            let MasaIma : UIImage = UIImage.init(named: "Button-4b - No.png")!
            pizzaIngredientsSelButton.setBackgroundImage(MasaIma,forState: UIControlState.Normal)
        }
        
    }

    @IBAction func SelPizzaCocinar(sender: AnyObject) {
        if( pizzaOrderTam    != PizzaTam.NoSel   &&
            pizzaOrderMas    != PizzaMasa.NoSel  &&
            pizzaOrderQue    != PizzaQueso.NoSel &&
            pizzaOrderIng?.misIngredientes["NoSel"] != true ) {
          
            let alert = UIAlertController(title: "Confirmar orden", message: "¿Desea confirmar la orden?", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Si", style: UIAlertActionStyle.Default, handler: { (action: UIAlertAction!) in
                self.resetValues()}))
            alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Cancel, handler: nil ))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Orden NO completa", message: "Su orden no está completa. \n Los botones negros le indica que le falta ordenar. \n Por favor complete su pedido.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetValues () {
        pizzaOrderTam = PizzaTam.init()
        pizzaOrderMas = PizzaMasa.init()
        pizzaOrderQue = PizzaQueso.init()
        pizzaOrderIng = PizzaIngredientes.init()
        
        let TamaIma : UIImage = UIImage.init(named: "Button-1b - No.png")!
        pizzaTamSelButton.setBackgroundImage(TamaIma,forState: UIControlState.Normal)
        
        let MasaIma2 : UIImage = UIImage.init(named: "Button-2b - No.png")!
        pizzaMasaSelButton.setBackgroundImage(MasaIma2,forState: UIControlState.Normal)
        
        let MasaIma3 : UIImage = UIImage.init(named: "Button-3b - No.png")!
        pizzaQuesoSelButton.setBackgroundImage(MasaIma3,forState: UIControlState.Normal)
        
        let MasaIma4 : UIImage = UIImage.init(named: "Button-4b - No.png")!
        pizzaIngredientsSelButton.setBackgroundImage(MasaIma4,forState: UIControlState.Normal)
        
        labelPizzaIngredientes.text = " "
        labelPizzaQueso.text = " "
        labelPizzaMasa.text = " "
        labelPizzaTamano.text = " "
        
        let alert = UIAlertController(title: "Cocinando", message: "Su orden se está cocinando. \n Presione OK para hacer otro pedido.", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func setOrderTam(valueSent: PizzaTam){
        self.pizzaOrderTam = valueSent
        labelPizzaTamano.text = "\(self.pizzaOrderTam!)"
        print("Principal -> \(self.pizzaOrderTam)")
    }
    
    func setOrderMasa(valueSent: PizzaMasa) {
        self.pizzaOrderMas = valueSent
        labelPizzaMasa.text = "\(self.pizzaOrderMas!)"
        print("Principal -> \(self.pizzaOrderMas)")    }
    
    func setOrderQueso(valueSent: PizzaQueso) {
        self.pizzaOrderQue = valueSent
        labelPizzaQueso.text = "\(self.pizzaOrderQue!)"
        print("Principal -> \(self.pizzaOrderQue)")
    }
    
    func setOrderIngredients(valueSent: PizzaIngredientes) {
        self.pizzaOrderIng = valueSent
        let message:String = "\(self.pizzaOrderIng!.printMyIngredients())".stringByReplacingOccurrencesOfString(" \n", withString: ",", options: NSStringCompareOptions.LiteralSearch, range: nil)
   
        if (message.characters.count == 0) {
                labelPizzaIngredientes.text = " "
        } else {
                labelPizzaIngredientes.text = message.substringToIndex(message.endIndex.predecessor())
        }
        print("Principal -> ", self.pizzaOrderIng?.printMyIngredients())
    }
}

