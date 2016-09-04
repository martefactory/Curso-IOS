//: Estructuras
import UIKit

struct Automovil{
    
    var marca : String
    var precio : Double
    var color : String
    
    init( marca: String,precio: Double, color: String){
        self.marca = marca
        self.precio = precio
        self.color = color
    }
    
    func obtenerDesc() -> String {
        return "Marca:\(marca), precio:\(precio)"
    }
}

var coche = Automovil(marca: "Opel", precio: 18000.50, color: "Rojo")
coche.marca = "opsop"
coche.precio

coche.obtenerDesc()
