//
//  ViewController.swift
//  AppParaEscribir
//
//  Created by Berganza on 17/11/15.
//  Copyright © 2015 Berganza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var vistaEscritura: AnyObject!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func borrarEscritura(sender: AnyObject) {
        let vistaPapel: Escribir = vistaEscritura as! Escribir
        vistaPapel.grafos = []
        vistaPapel.setNeedsDisplay()
    }
}

