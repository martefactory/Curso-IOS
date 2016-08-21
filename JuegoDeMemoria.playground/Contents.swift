//
//  JuegoDeMemoria.playground
//  JuegoDeMemoria
//
//  Created by Mario Ramirez on 21/8/16.
//  Copyright © 2016 Mario Ramirez. All rights reserved.
//

import UIKit

//Rango 0 to 100.
var range = 0...100

//Iterar
for id in range {
    
    //Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
    if id%5 == 0 {
        print ("\(id) Bingo!!!" )
    }
    
    //Si el número es par, imprime: # el número + “par!!!”
    if id%2 == 0 {
        print ("\(id) par!!!" )
    }else{
    //Si el número es impar, imprime: # el número + “impar!!!”
        print ("\(id) impar!!!" )
    }
    
    //Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
    if (id >= 30 && id <= 40) {
        print ("\(id) Viva Swift!!!" )
    
    }
}

// End


