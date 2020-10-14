#Ejercicio 2
#1. Crear la clase con el nombre CuentaBancaria (1punto)
#Los métodos getter y setter para el atributo nombre_de_usuario (1punto)
#Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los
#atributos(1punto)
#Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número
#de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para
#contarlos) (1punto)
#Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP
#(1pto), este valor puede ser 1 o 0. Por defecto será 0.
#Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un
#prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el
#método debería devolver '1-00112233' (1punto)

class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
          @nombre_de_usuario = numero_de_cuenta
          @numero_de_cuenta = numero_de_cuenta
          @vip = vip

        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'El numero de digitos es distinto a 8'
        end
        if !(0..1).include?(vip)
            raise RangeError, 'vip no es 0 o 1'
        end
    end
def numero_de_cuenta
    "#{@vip} -#{@numero_de_cuenta}"
end
end
prueba = CuentaBancaria.new('Pepito Lopez', 37890561)
puts prueba.inspect
puts prueba.numero_de_cuenta