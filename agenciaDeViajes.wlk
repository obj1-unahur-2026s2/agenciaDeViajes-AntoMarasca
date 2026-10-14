class Pack {
    const duracionEnDias
    const beneficioEspecial = []
    const coordinadorACargo
    const precioBase

    methos agregarBeneficio(beneficio) {
        beneficioEspecial.add(beneficio)
    }

    method duracionEnDias() = duracionEnDias
    method precio() = precio
    method coordinadorACargo() = coordinadorACargo
    method costosDeLosBeneficios() {
        beneficioEspecial.filter({b => b.costo()}).sum()
    }
    method valorFinal() = precioBase + self.costosDeLosBeneficios()
}

class Nacional inherits Pack {
    const provinciaDeDestino
    const actividadesIncluidas = []

    method agregarActividad(actividad) {
        actividadesIncluidas.add(actividad)
    }

    method provinciaDeDestino() = provinciaDeDestino
}

class Internacional inherits Pack {
    const paisDeDestino
    const cantidadDeEscalas
    const esDeInteres

    method paisDeDestino() = paisDeDestino
    method cantidadDeEscalas() = cantidadDeEscalas
    mehod esDeInteres() = esDeInteres
    override method valorFinal() = super() * 1.2
}

class Coordinador {
    const viajesRealizados
    const estaMotivado
    const aniosDeExperiencia
    const rolPermitido = [guia, asistenteLogistico, acompaniante]

    method rol(unRol) {
        if (rolPermitido.contains(unRol)) {
            return unRol
        } else {
            self.error("Rol no aceptado")
        }
    }
}

class BeneficioEspecial {
    const tipo
    const costo
    const estaVigente

    method tipo() = tipo
    method costo() = costo
    method estaVigente() = estaVigente
}