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
        if !(1..13).include?(numero)
            raise ArgumentError, 'El numero no esta entre 1 y 13'
        end
        if !['C', 'D', 'E', 'T'].include?(pinta)
            raise ArgumentError, 'No es la pinta amigx'
        #@numero = numero
        #@pinta = pinta
        end
    end
    def self.numero
        Random.rand(1..13)
    end
    def self.pinta
    ['C', 'D', 'E', 'T'].sample
    end
end
array = []
5.times do
    pinta1 = Carta.pinta
    numero1 = Carta.numero
    array.push Carta.new(numero1, pinta1)
#puts array.inspect
end
#print array
carta2 = Carta.new(18, 'u')
print carta2