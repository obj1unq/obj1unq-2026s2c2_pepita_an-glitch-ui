# Primeros pasos
Este ejercicio permite explorar los primeros conceptos de la programación orientada a objetos: construcción de objetos, métodos (consultas y acciones), accesors, parámetros, self.

### Ejercicio1: Comportamiento básico de Pepita

Pepita es una golondrina que cuenta con una cantidad de energía que le permite volar. Cuando se le indica realizar alguna acción a pepita, su energía puede subir o bajar dependiendo del tipo de acción. Su energía inicial es de 100 calorías.

* Al indicarle que vuele una cantidad de metros, consume diez calorías para despegar, más una caloría por cada diez metros recorridos.
* Cada vez que le indicamos que descanse recupera 10 calorías.

Por último, queremos poder preguntarle a pepita si está cansada. Sabemos que está cansada cuando su energía cae por debajo de las 30 calorías.

**Tareas:**  

1. Definir el objeto pepita con la interfaz que le permita tener el comportamiento descripto.

2. Ejecutar el siguiente escenario de prueba, asumiendo que pepita tiene una energía inicial de 100 unidades:
   
   * Hacer volar a pepita 200 m. Su energía ahora se decrementó en 30 calorías, quedando en 70 calorías.
   * Verificar que no está cansada.
   * Hacer volar a pepita otros 350 m, consumiendo 45 calorías adicionales para finalizar en 25 calorías.
   * Ahora sí está cansada pepita.
   * Hacer que pepita descanse. Su energía aumenta 10 calorías, llegando a 35.
   * Comprobar que, luego de descansar, pepita ya no está cansada.    
    
### Ejercicio 2: Alimentar a pepita

Para incorporar energía, pepita come alpiste. El alpiste le aporta 25 calorías.

**Tareas:** 

1. Definir el objeto ``alpiste`` respetando los requerimientos descriptos.
1. Definir el método ``comer(alpiste)`` en el objeto pepita. 
1. Probar el siguiente escenario
   * Hacer que pepita vuele 900m, luego de eso está cansada (su energía se redujo a 0).
   * Hacer que pepita coma alpiste, sigue estando cansada (energía = 25 calorías).
   * Nuevamente hacer que pepita coma alpiste y verificar que ya no está cansada (energía = 50 calorías).

### Ejercicio 3: Dieta variada

Ahora se necesita alimentar a Pepita con una manzana que también le aporta energía en función de su madurez,
que es un valor que varía entre 1 y 3.

Así, el aporte calórico de la manzana será de 20 calorías multiplicado por el grado de madurez de la misma.
Sin embargo, si la manzana llega al grado 3 significa que está podrida y su aporte calórico pasa a ser nulo.

**Tareas:** 

1. Definir el objeto ``manzana`` siguiendo estos requerimientos.
2. Verificar que pepita pueda comer tanto alpiste como manzanas, aumentando su energía de manera diferente en cada caso.
3. Definir escenarios de prueba para combinar órdenes de comer y volar, validando los diferentes estadíos de la manzana.

### Ejercicio 4: Pepón

Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la manzana y sigue las siguientes reglas:

- La energía inicial de pepón es 30.
- Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento
- Cuando vuela gasta 20 fijos más 2 joules por km, 
- Está cansado si su energía es menor a 34

Ejemplos:
- al inicio está cansado
- si tiene 30 de energía y come alpiste su nueva energía es 30 + 20/2 = 40. Ya no está cansado 
- si tiene 30 de energía y vuela 3 km su nueva energía es: 30 - 20 - 2*3 = 4. Está cansado


### Ejercicio 5: Rebeca
Agregar a Rebeca, que es una persona

Tiene un ave, a veces es Pepón, a veces es Pepita, por lo tanto tiene que entender un mensaje para que se le indique cual es su ave. Inicialmente es pepita.

### Alimentar de Rebeca
 Rebeca entiende el mensaje *alimentar*, que recibe un alimento por parámetro. Al recibir este mensaje rebeca alimenta a su ave. 

Ejemplos:
- Si tiene a pepon con energía de 30, y recibe el mensaje alimentar(alpiste) pepon queda con 42.5 de energía
- Si tiene a pepita con energía de 100 y recibe el mensaje alimentar(alpiste) pepita queda con 125 de energía.

### Cenas

Entiende el mensaje *cenas* sin parámetros, el cual devuelve la cantidad de veces que rebeca dio de alimentar a su ave
Desde que la está entrenando. (Pensar como hacer para recordar este dato y cuando se debe resetear). 

Por ejemplo:
1. a rebeca se le encomienda entrenar a pepita
2. a rebeca se le pide alimentar a su ave
3. a rebeca se le pide nuevamente alimentar a su ave
4. a rebeca se le pregunta por las cenas: devuelve 2
5. a rebeca se le enconmienda  entrenar a pepon
6. a rebeca se le pide alimentar a su ave
7. a rebeca se le pregunta por las cenas: devuelve 1
8. a rebeca se le encomienda entrenar a pepita
9. a rebeca se le pregunta por las cenas: devuelve 0

Nota: Si rebeca está entrenando a pepita y se le pide nuevamente que entrene a pepita, se puede considerar que la cuenta de cenas debe reiniciarse. 

### Ejercicio 6: Reflexión sobre los conceptos

Teniendo en cuenta tu solución del problema, respondé las preguntas siguientes:
1. ¿Qué métodos son consultas y cuáles son órdenes?
2. En cuanto a cada situación que manifiesta polimorfismo:
   
   a. ¿Cuál es el mensaje polimórfico y quién lo envía?
   
   b. Considerando los objetos que entienden el mensaje polimórfico ¿Qué nombre le pondrías al **tipo polimórfico**?
   
   d. ¿Qué objetos implementan ese tipo?

