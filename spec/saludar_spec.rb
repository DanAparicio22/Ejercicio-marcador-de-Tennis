require './lib/saludador'

describe Saludador  do
	it "deberia devolver Pepe Pedro" do
		@saludador=Saludador.new()
		expect(@saludador.saluda("Pepe","Pedro")).to eq("Pepe Pedro")
	end

end