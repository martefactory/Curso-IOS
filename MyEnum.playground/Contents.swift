//: Playground - noun: a place where people can play

import UIKit


enum Planetas : Int {
    case Tierra = 305,Marte=400, Jupiter = 500
    
    init(){
        self = .Marte
    }
    func calculaDistancia ( dato : Planetas) -> Int{
        return self.rawValue - dato.rawValue
    }
}
let planeta = Planetas()

print(planeta.calculaDistancia(Planetas.Jupiter))
planeta.calculaDistancia(Planetas.Tierra)



enum Ciudad : Int{
    case Madrid = 100, Barcelona = 600, Valencia = 300, Murcia = 400
    
    func calculaDistancia () -> Int {
        
        return (Ciudad.Madrid.rawValue - self.rawValue)*(-1)
    }
    
    init (){
    
        self = Madrid
    }
    
}

var distancia = Ciudad()
distancia.rawValue
distancia.calculaDistancia()
