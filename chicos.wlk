import huevosDePascua.*

object ana {
    const huevosComidos = []

    method huevosComidos() = huevosComidos
    method comer(huevo) {
        huevosComidos.add(huevo)
    }

    method consumioMasDe5000() {
        return
        huevosComidos.sum({huevo => huevo.calorias()}) > 5000
    }
    method hayHuevoBlanco() {
        return
        huevosComidos.any({huevo => huevo.esDeChocolateBlanco()})
    }
    method estaEnfermo() {
        return
        self.consumioMasDe5000() || self.hayHuevoBlanco()
    }
}

object jose {
    var ultimoHuevoComido = huevoRepostero

    method huevosComidos() = ultimoHuevoComido
    method comer(nuevoHuevo) {
        ultimoHuevoComido = nuevoHuevo
    }

    method estaEnfermo() {
        return 
        ultimoHuevoComido.esDeChocolateAmargo()
    }
}

object tito {
    const huevosComidos = []

    method huevosComidos() = huevosComidos
    method comer(huevo) {
        huevosComidos.add(huevo)
    }

    method estaEnfermo() = false
}