class Producto
   def initialize(tipo_producto, nombre_producto, precio)
	@tipo = tipo_producto
    @nombre = nombre_producto
    @precio = precio
   end
 
   def cuanto_por(cantidad)
     total_por_producto=0
     if (@tipo == "articulo")
	  total_por_producto = cuanto_por_articulo(cantidad);
	 else
	    total_por_producto = cuanto_por_servicio(cantidad);
	 end
	  return total_por_producto
   end 

    def cuanto_por_articulo(cantidad) 
		return @precio*cantidad;
    end

	def cuanto_por_servicio(cantidad) 
		return @precio*cantidad*0.2;
	end	

end