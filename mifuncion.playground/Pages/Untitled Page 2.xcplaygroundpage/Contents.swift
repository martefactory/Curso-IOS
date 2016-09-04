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
        
        return Ciudad.Madrid.rawValue - self.rawValue
    }
    
}

var distancia = Ciudad.Madrid
distancia.rawValue
distancia.calculaDistancia()
