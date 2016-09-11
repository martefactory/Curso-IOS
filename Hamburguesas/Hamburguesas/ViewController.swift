//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Mario Ramirez on 11/9/16.
//  Copyright © 2016 Mario Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    
    let colores = Colores()
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func getPaisHamburguesa() {
        
        //Color Aleatorio
        let color = colores.getColor()
        view.backgroundColor = color
        view.tintColor = color
        
        //Nombre del País
        nombrePais.text = paises.obtenPais()
        //Nombre de la Hamburguesa
        nombreHamburguesa.text = "Hamburguesa \(hamburguesas.obtenHamburguesa())";
        
    }
}

