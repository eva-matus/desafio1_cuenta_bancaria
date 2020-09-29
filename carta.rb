#Ejercicio 1

#Crear la clase carta con los atributos numero y pinta (o color) (1punto)
#Agregar los getters y setters a ambos atributos.(1punto)
#Crear el constructor de la clase carta que le permita recibir un numero del 1 al 13 y la pinta que
#está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol:
#'T'(2 puntos)
#Tip 1: Para escoger un número al azar ocupar Random.rand(rango_inferior,
#rango_superior)
#Tip 2: Agregar las pintas posibles en un arreglo y ocupar el método .sample
#Probar la clase creando un arreglo con 5 cartas.(1punto)

class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)