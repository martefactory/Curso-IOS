//
//  Datos.swift
//  Hamburguesas
//
//  Created by Mario Ramirez on 11/9/16.
//  Copyright © 2016 Mario Ramirez. All rights reserved.
//

import Foundation
import UIKit

//Clase ColeccionDePaises
class ColeccionDePaises{
    
    // Arreglo de Países
    let paises : [String] = ["España","México","Italia","Francia","Portugal","Alemania","Andorra","Austria","Bélgica","Bielorrusia","Chipre","Argentina","Brasil","Canada","Dinamarca","Eslovaquia","Noruega","Rumanía","Mónaco","Islandia","Irlanda","Reino Unido","Turquía","Finlandia"];
    
    // Funcion para obtener país de manera aleatoría
    func obtenPais( )->String{
        let position = Int(arc4random())%paises.count;
        return paises[position];
    }
}

//Clase ColeccionDeHamburguesa
class ColeccionDeHamburguesas {
    let hamburguesas : [String] = ["Picante","Con Queso","De Pollo","Con Baicon","De Pescado","De Pollo","De Atún","De Tofu","De Pavo","Vegetal","De Soja","De Jamón Serrano","Barbacoa","De Trufa","De Buey","De Salmón","De Roquefort","De Setas","De Espinacas","De Foie","De Toro","Con Huevo","De Lacón","Teriyaki"];
    
    // Funcion para obtener tipo de Hamburgesas de manera aleatoría
    func obtenHamburguesa( )->String{
        let position = Int(arc4random())%hamburguesas.count;
        return hamburguesas[position];
    }
    
}

//Clase Colores
struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 180/255.0, blue: 100/255.0, alpha: 1),
                    UIColor(red:210/255.0, green: 190/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red:120/255.0, green: 120/255.0, blue: 75/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 130/255.0, blue: 30/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:110/255.0, green: 190/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:140/255.0, green: 70/255.0, blue: 145/255.0, alpha: 1),
                    UIColor(red:30/255.0, green: 80/255.0, blue: 190/255.0, alpha: 1),
                    UIColor(red:10/255.0, green: 90/255.0, blue: 15/255.0, alpha: 1),
                    UIColor(red:20/255.0, green: 20/255.0, blue: 150/255.0, alpha: 1),
                    UIColor(red:230/255.0, green: 180/255.0, blue: 190/255.0, alpha: 1),
                    UIColor(red:70/255.0, green: 230/255.0, blue: 30/255.0, alpha: 1),
                    UIColor(red:30/255.0, green: 150/255.0, blue: 190/255.0, alpha: 1),
                    UIColor(red:20/255.0, green: 190/255.0, blue: 145/255.0, alpha: 1),
                    UIColor(red:140/255.0, green: 100/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red:13/255.0, green: 120/255.0, blue: 9/255.0, alpha: 1),
                    UIColor(red:15/255.0, green: 190/255.0, blue: 15/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 120/255.0, blue: 150/255.0, alpha: 1),
                    UIColor(red:110/255.0, green: 80/255.0, blue: 190/255.0, alpha: 1),
                    UIColor(red:200/255.0, green: 13/255.0, blue: 30/255.0, alpha: 1),
                    UIColor(red:30/255.0, green: 5/255.0, blue: 190/255.0, alpha: 1)]
    
    func getColor() -> UIColor {
        let position = Int(arc4random())%colores.count;
        return colores[position];
    }
}