// ================================= AVES ===========================================
object pepita {
  var energia = 100


  method volar(distania) {
    energia -= 10 - distania/10
  }

  method descansar() {
    energia += 10
  }

  method comer(alimento) {
    energia += alimento.energiaQueAporta()
  }
}

object pepon {
  var energia = 30

  method comer(alimento) {
    energia += alimento.energiaQueAporta()/2
  }

  method volar(distancia) {
    energia -= 20 + 2*distancia
  }

  method estaCansado() = energia < 34
}

// ================================= ALIMENTOS =======================================
object alpiste {
  method energiaQueAporta() = 25
}

object manzana {
  var madurez = 1
  //const calorias = 20


  method madurar(valor) {
    madurez = valor
  }

  method energiaQueAporta() = 20*self.escala()
  //method energiaQueAporta() = calorias*self.escala()

method escala() {
    return if(madurez >= 3){
      0
    } else{
      madurez
    }
  }
}

// ============================== PERSONAS =========================================
object rebeca {
  var ave = pepita
  var cantDeCenas = 0


  method cambiarAvePor(nuevAve) {
    ave = nuevAve
    cantDeCenas = 0
  }

  method alimentarCon(alimento) {
    ave.comer(alimento)
    cantDeCenas += 1
  }

  method cenas() = cantDeCenas
}

/*
[X]    -  mal/corregido
[X-]   -  mal pero no tan mal 
[O]    -  sin correcciones/bien

¿Qué métodos son consultas y cuáles son órdenes?
-Consultas: energiaQueAporta(), estaCansado(), escala(), cenas()
Ordenes: comer(alimento), volar(distancia), descansar(), madurar(), cambiarAvePor(nuevaAve), alimentarCon(alimento)

En cuanto a cada situación que manifiesta polimorfismo:
a. ¿Cuál es el mensaje polimórfico y quién lo envía?
-El mensaje polimorfico es energiaQueAporta() un alimento, como la manzana o el alpiste, que quien lo envía es el objeto pepita.     [O]

b. Considerando los objetos que entienden el mensaje polimórfico ¿Qué nombre le pondrías al tipo polimórfico?
-energiaQueAporta(?   [X]
-El nombre del tipo polimórfico sería Alimento, para que entienda el mensaje general 'energiaQueAporta()'.

d. ¿Qué objetos implementan ese tipo?
- Los objetos que lo implementarian son aquellos que son alimentos, aunque puede ser implementado por otros objetos que usen el mismo tipo, aunque el nombre no corresponda.    [X-]
En este caso, los objetos que implementan ese tipo son manzana y alpiste. Junto con otro polimorfismo en el objeto 'ave' que implementa el método comer(alimento), implentado por el objeto 
'rebeca' y usado por los objetos 'pepita' y 'pepon'.
*/