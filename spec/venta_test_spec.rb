require 'rspec';
require './lib/venta';
require './lib/producto';

describe Venta do

	it "devuelve el total para una venta con un articulo" do
		teclado = Producto.new('articulo', 'teclado', 2)
		venta = Venta.new();
		venta.anadir(teclado, 1);
		venta.calcular_total.should == 2
	end

	#it "devuelve el total para una venta con otro articulo" do
	#	venta = Venta.new();
	#	venta.anadir("articulo", "computadora", 100, 2);
	#	venta.calcular_total.should == 200
	#end

	#it "devuelve el total para una venta con dos articulos" do
	#	venta = Venta.new();
	#	venta.anadir("articulo", "computadora", 100, 2);
	#	venta.anadir("articulo", "teclado", 2, 1);
	#	venta.calcular_total.should == 202
	#end


	#it "devuelve el total para una venta con un servicio" do
	#	venta = Venta.new();
	#	venta.anadir("servicio", "mantenimiento", 1, 20);
	#	venta.calcular_total.should == 4
	#end



end