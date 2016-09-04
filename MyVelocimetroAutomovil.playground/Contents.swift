
//
//  MyVelocimetroAutomovil.playground
//  MyVelocimetroAutomovil
//
//  Created by Mario Ramirez on 04/09/16.
//  Copyright © 2016 Mario Ramirez. All rights reserved.
//

import UIKit

//Enumeración estados y velocidades asociadas
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    //Se inicializa la velocidad con la velocidad pasada.
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    //Descripciones de velocidades.
    var descripcion : String {
        switch self{
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "Velocidad Alta"
        }
    }
    
}
//Clase Auto
class Auto {
    var velocidad : Velocidades
    
    init (){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    //funcion cambio de Velocidad
    func cambioDeVelocidad()-> ( actual : Int, velocidadEnCadena: String){
        let velocidadActual = self.velocidad
        
        switch(self.velocidad){
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        return (velocidadActual.rawValue, velocidadActual.descripcion)
    }

}


// Pruebas de la clase
var coche = Auto()

for i in 1...20 {
    let prueba = coche.cambioDeVelocidad()
    if (i < 10) {
        print("0\(i). Velocidad: ",prueba.actual,"", prueba.velocidadEnCadena)
    }else{
        print("\(i). Velocidad: ",prueba.actual,"", prueba.velocidadEnCadena)
    }

}
