import chicos.*
import huevosDePascua.*

object caceria {
    const chicos = [ana, jose, tito]
    const huevosEncontrados = []
    const huevosNoEncontrados = []

    method iniciarCaceria() {
        blisterHuevitos.cambiarHuevitos(14)
        flor.cambiarPetalos(7)
        matrioshka.cambiarHuevoInterior(blisterHuevitos)
        matrioshka.cambiarDecoracion(flor)
        huevosNoEncontrados.addAll([matrioshka, huevoRepostero, conejo, huevoMixto])
        chicos.forEach({chico => chico.estaEnfermo()})

    }

    method cantidadPorEncontrar() = huevosNoEncontrados.size()
    method cuantosConChocoBlanco() = huevosNoEncontrados.count({h => h.esDeChocolateBlanco()})

    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.any({h => h == unHuevo})

    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }

    method encontrarPrimerHuevo(unChico) {
        self.encontrarUnHuevoPor(unChico,huevosNoEncontrados.first())  
    }

    method encontrarLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarUnHuevoPor(unChico, h)})      
    }


    method huevosFaltantesBlancos() = huevosNoEncontrados.filter({h => h.esDeChocolateBlanco()})
    method noElDeMayorCalorias() = huevosNoEncontrados.max({h => h.calorias()})
}