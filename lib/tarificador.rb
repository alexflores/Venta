class Tarificador
  attr_accessor :estrategia_tarificador
  
  def initialize(estrategia)
    @estrategia_tarificador=estrategia
  end

  def cuanto_por(precio, cantidad) 
  	return @estrategia_tarificador.cuanto_por(cantidad, precio)
  end	
end