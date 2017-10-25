require './lib/tennis'
describe Tennis do
	before(:each) do
		@tennismatch=Tennis.new() #Romanos romanos=new Romanos()
	end

	it "should show 0 iguales" do
		expect(@tennismatch.showScore).to eq("0 iguales")
	end
	it "should show 15 - 0" do
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("15 - 0")
	end
	it "should show 30 - 0" do
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("30 - 0")
	end
	it "should show 40 - 0" do
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("40 - 0")
	end
	it "should show 0 15" do
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("0 - 15")
	end
	it "should show 0 30" do
		@tennismatch.player2point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("0 - 30")
	end

	it "should show 0 40" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("0 - 40")
	end

	it "should show 15 iguales" do
		@tennismatch.player2point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("15 iguales")
	end

	it "should show 30 iguales" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("30 iguales")
	end

	it "should show Deuce" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("Deuce")
	end

	it "should show Ventaja jugador 1" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("Ventaja jugador 1")
	end

	it "should show Juego jugador 1 after Ventaja jugador 1" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("Juego jugador 1")
	end

	it "should show Deuce after Ventaja jugador 1" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("Deuce")
	end

	it "should show Ventaja jugador 2" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("Ventaja jugador 2")
	end

	it "should show Juego jugador 2 after Ventaja jugador 2" do
		
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player2point
		@tennismatch.player1point
		@tennismatch.player2point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("Juego jugador 2")
	end

	it "should show Juego jugador 2" do
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		@tennismatch.player2point
		expect(@tennismatch.showScore).to eq("Juego jugador 2")
	end

	it "should show Juego jugador 1" do
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		@tennismatch.player1point
		expect(@tennismatch.showScore).to eq("Juego jugador 1")
	end

end
