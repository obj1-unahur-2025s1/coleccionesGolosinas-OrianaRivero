object bombon{
    
    var property peso = 15

    method precio() = 5

    method gusto() = frutilla

    method esLibreDeGluten() = true

    method recibirMordisco(){
        peso = peso * 0.8 -1
    }
}

object alfajor{

    var property peso = 15

    method precio() = 12

    method gusto() = chocolate

    method esLibreDeGluten() = false

    method recibirMordisco(){
        peso = peso * 0.8
    }
}

object caramelo{
    
    var property peso = 5

    method precio() = 12

    method gusto() = frutilla

    method esLibreDeGluten() = true

    method recibirMordisco(){
        peso -= 1
    }
}

object chupetin{
    
    var property peso = 7

    method precio() = 2

    method gusto() = naranja

    method esLibreDeGluten() = true

    method recibirMordisco(){
        if(peso > 2){
            peso = peso * 0.9
        }
    }
}

object oblea{
    
    var property peso = 250

    method precio() = 5

    method gusto() = vainilla

    method esLibreDeGluten() = false

    method recibirMordisco(){
        if(peso > 70){
            peso = peso * 0.5
        } 
        else peso = peso - (peso * 0.25)
    }
}

object chocolatin{
    
    var property peso = 0

    method precio() = 0.50 * peso

    method gusto() = chocolate

    method esLibreDeGluten() = false

    method recibirMordisco(){
        peso = 0.max(peso - 2)
    }
}


object golosinaBaniada{
    
    var golosina = null
    var pesoDelBaniado = 4

    method golosinaInterior(unaGolosina){
        golosina = unaGolosina
    }
    
    method peso() = golosina.peso() + pesoDelBaniado

    method precio() = golosina.precio() + 2

    method gusto() = golosina.gusto()

   method esLibreDeGluten() = golosina.esLibreDeGluten()

    method recibirMordisco(){
        golosina.recibirMordisco()
        pesoDelBaniado = (pesoDelBaniado - 2).max(0)
    }

}

object pastillaTuttiFrutti{

    var property peso = 5

    var property esLibreDeGluten = true

    var property gustoActual = 0

    const sabores = [frutilla, chocolate, naranja]

    method precio(){
        if(esLibreDeGluten){
            return 7
        } else return 10
    }

    method gusto(){
        return sabores.get(gustoActual % 3)
    }

    method recibirMordisco(){
        gustoActual = gustoActual + 1
    }
}

object frutilla{}
object chocolate{}
object naranja{}
object vainilla{}