require 'tarificador'
require 'tarificador_articulo'
require 'tarificador_servicio'

class Tarificador_Factory

   def crear_tarificador(tipo, precio, cantidad)
     total_por_producto=0
     if (tipo == "articulo")
	  tarificador_articulo = Tarificador.new(Tarificador_Articulo.new)
	  total_por_producto = tarificador_articulo.cuanto_por(precio, cantidad)
	 else
	 	if (tipo == "servicio")
	    tarificador_servicio = Tarificador.new(Tarificador_Servicio.new)
	    total_por_producto = tarificador_servicio.cuanto_por(precio, cantidad)
	    end
	 end
	  return total_por_producto
   end
   
end