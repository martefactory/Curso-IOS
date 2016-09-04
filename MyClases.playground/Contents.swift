//: Estructuras
import UIKit

class Producto{
    
    var marca : String
    var precio : Double = 0.0
    
    
    init( marca: String,precio: Double){
        self.marca = marca
        self.precio = precio
        
    }
    
    func calcularPrecioDto(porcentajeDto: Double)->Double{
        //precio = precio * porcentajeDto / 100
        return precio * porcentajeDto / 100
        
    }
}

var telefono = Producto(marca: "Apple", precio: 190.00)
telefono.precio = 10000
telefono.calcularPrecioDto(50)
print(telefono.precio)


enum Seccion : String{
 case Introduccion, Indice, Conclusiones
    init(){
        self = .Introduccion
    }
}

//Herencia
class Libro: Producto {
    var seccion = Seccion()
    var añoPublicacion : Int = 0
    var contieFormatoDigital : Bool?
    var paginas = 1000
    var palabrasPorPagina = 60
    
    var numeroDePalabrasDelLibro : Int{
        
        get {
        return paginas*palabrasPorPagina
    }
        set{
            paginas = newValue
            palabrasPorPagina = newValue
        
    }
    }
    
    init (marca: String,precio: Double, añoPublicacion: Int) {
        self.añoPublicacion = añoPublicacion
        super.init(marca: marca, precio: precio)
    }
    
    convenience init (marca: String){
        self.init (marca:marca, precio:0.0, añoPublicacion: 1960)
    
    }
    
    
    override func calcularPrecioDto(porcentajeDto: Double)->Double{
        //precio = precio * porcentajeDto / 100
        let previo = super.calcularPrecioDto(100)
        return previo*1000
    }
    
}

var libro = Libro (marca: "Harry", precio: 190, añoPublicacion: 1978)
libro.calcularPrecioDto(100)
libro.numeroDePalabrasDelLibro = 100
libro.numeroDePalabrasDelLibro


var libro1 = Libro (marca: "HArry Potter")
libro1.seccion
libro1.contieFormatoDigital = true
if let formatoDigital = libro1.contieFormatoDigital {
    if formatoDigital {
        print ("Digital")
    }
}


