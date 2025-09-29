object huevoRepostero {
    method calorias() = 750
    
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method esDeChocolateConLeche() = false
}

object huevoMixto {
    method calorias() = 900
    
    method esDeChocolateConLeche() = true
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = false
}

object conejo {
    var peso = 10

    method calorias() = peso * 10
    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }
    
    method esDeChocolateAmargo() = true
    method esDeChocolateBlanco() = false
    method esDeChocolateConLeche() = false
}

object blisterHuevitos {
    var huevitos = 3

    method calorias() = huevitos * 100 + huevitos.div(5) * 150
    method cambiarHuevitos(unValor) {
        huevitos = unValor
    }
    
    method esDeChocolateAmargo() = false
    method esDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateConLeche() = false
}

object matrioshka {
    var huevoInterior = huevoMixto
    var decoracion = arbol


    method calorias() = 3000 + self.decoracion().calorias() + huevoInterior.calorias()
    method decoracion() = decoracion
    method cambiarDecoracion(nuevaDecoracion) {
        decoracion = nuevaDecoracion
    }
    
    method huevoInterior() = huevoInterior
    method cambiarHuevoInterior(nuevoHuevo) {
        huevoInterior = nuevoHuevo
    }

    method esDeChocolateAmargo() = true
    method esDeChocolateBlanco() = false
    method esDeChocolateConLeche() = false
}

object flor {
    var petalos = 8
    method calorias() = petalos * 100
    method cambiarPetalos(nuevosPetalos) {
        petalos = nuevosPetalos
    }
}

object arbol {
    method calorias() = 150
}