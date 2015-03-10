require 'tarificador'
require 'tarificador_articulo'
require 'tarificador_servicio'
class Producto

   def initialize(tipo_producto, nombre_producto, precio)
	@tipo = tipo_producto
    @nombre = nombre_producto
    @precio = precio

   end
 
   def cuanto_por(cantidad)
     total_por_producto=0
     if (@tipo == "articulo")
	  tarificador_articulo = Tarificador.new(Tarificador_Articulo.new)
	  total_por_producto = tarificador_articulo.cuanto_por(@precio, cantidad)
	 else
	    tarificador_servicio = Tarificador.new(Tarificador_Servicio.new)
	    total_por_producto = tarificador_servicio.cuanto_por(@precio, cantidad)
	 end
	  return total_por_producto
   end 

end