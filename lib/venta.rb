require 'producto'
class Venta
  def initialize()
	@total = 0;
  end

  def anadir(producto = Producto.new, cantidad) 
    @total = producto.cuanto_por(cantidad) + @total
	end  

  def calcular_total
    return @total;
  end	
end