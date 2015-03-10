require 'producto'
class Venta
  def initialize()
	@total = 0;
  end

  def anadir(producto = Producto.new, cantidad) 
    if (producto.getTipo == "articulo")
	  @total = @total + (producto.getPrecio*cantidad);
	else
	  if (producto.getTipo == "servicio")
	    @total = producto.getPrecio*cantidad*0.2;
	  end
	end

  end

  def calcular_total
    return @total;
  end	
end