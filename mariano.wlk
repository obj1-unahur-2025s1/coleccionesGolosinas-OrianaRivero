import golosinas.*

object mariano{
    const golosinasCompradas = []

    method comprar(unaGolosina){
        golosinasCompradas.add(unaGolosina)
    }

    method desechar(unaGolosina){
        golosinasCompradas.remove(unaGolosina)
    }

    method cantidadDeGolosinas(){
        return golosinasCompradas.size()
    }

    method tieneLaGolosina(unaGolosina){
        return golosinasCompradas.contains(unaGolosina)
    }

    method probarGolosinas(){
        golosinasCompradas.forEach({g=>g.recibirMordisco()})
    }

    method hayGolosinaSinTACC(){
        return golosinasCompradas.any({g=>g.esLibreDeGluten()})
    }

    method preciosCuidados(){
        return golosinasCompradas.all({g=>g.precio() <= 10})
    }

    method golosinaDeSabor(unSabor){
        return golosinasCompradas.find({g=>g.gusto() == unSabor})
    }

    method golosinasDeSabor(unSabor){
        return golosinasCompradas.filter({g=>g.gusto() == unSabor})
    }

    method sabores(){
        return golosinasCompradas.map({g=>g.gusto()}).asSet()
    }

    method golosinaMasCara(){
        return golosinasCompradas.max({g=>g.precio()})
    }

    method pesoGolosinas(){
        return golosinasCompradas.sum({g=>g.peso()})
    }

    method golosinasFaltantes(golosinasDeseadas){
        return golosinasDeseadas.difference(golosinasCompradas)
    }

    method gustosFaltantes(gustosDeseados){
        return gustosDeseados.difference(self.sabores())
    }
}