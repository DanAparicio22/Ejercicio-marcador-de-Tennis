require './lib/saludador'

describe Saludador  do
	it "deberia devolver Pepe - Pedro" do
		@saludador=Saludador.new()
		expect(@saludador.saluda("Pepe","Pedro")).to eq("Pepe - Pedro")
	end

	it "deberia devolver jugador 1 - jugador 2" do
		@saludador=Saludador.new()
		expect(@saludador.saludar).to eq("jugador 1 - jugador 2")
	end
end