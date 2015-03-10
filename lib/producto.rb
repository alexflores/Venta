require 'tarificador_factory'
class Producto

   def initialize(tipo_producto, nombre_producto, precio)
	@tipo = tipo_producto
    @nombre = nombre_producto
    @precio = precio

   end
 
   def cuanto_por(cantidad)
	  tipo_tarificador = Tarificador_Factory.new
	  return tipo_tarificador.crear_tarificador(@tipo, @precio, cantidad)
   end 

end