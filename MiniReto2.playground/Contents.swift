import UIKit

// MiniReto 2, autor: Juan Felipe Torres

/* Se declara la enumeración Velocidades que representa las velocidades del auto */
enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

/* Se declara la clase Auto */
class Auto{
    
    /* Atributo que representa la velocidad del auto (valores de la enumeración) */
    var velocidad : Velocidades
    
    /* Constructor de la clase auto */
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    /* Método que cambia el valor de velocidad a la siguiente velocidad gradual, de Apagado pasa a Velocidad baja y así sucesívamente
     * return (actual, velocidadEnCadena) tupla con el valor de la velocidad actual y su velocidad en un String
     */
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var cambioVelocidad = (0,"")
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            cambioVelocidad = (0,"Apagado")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            cambioVelocidad = (20,"Velocidad baja")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            cambioVelocidad = (50,"Velocidad media")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            cambioVelocidad = (120,"Velocidad alta")
        }
        return cambioVelocidad
    }
}

/* Se crea una instancia de la clase auto */
var auto = Auto()

/* Realiza 20 iteraciones sobre el método de cambio de velocidad de la clase Auto */
for _ in 0..<20{
    let cambioVel = auto.cambioDeVelocidad()
    print("\(cambioVel.actual), \(cambioVel.velocidadEnCadena)")
}


