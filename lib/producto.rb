class Producto
   def initialize(tipo_producto, nombre_producto, precio)
	@tipo = tipo_producto
    @nombre = nombre_producto
    @precio = precio
   end

   def getTipo
    @tipo
   end

   def getPrecio
    @precio
   end 	

end