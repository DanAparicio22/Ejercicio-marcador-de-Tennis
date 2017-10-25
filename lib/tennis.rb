class Tennis
	def initialize()     
    	@player1score = "0"  
   		@player2score = "0" 
  	end

  	def playerPoint(jugador1,jugador2)
  		if(playerEqual0(jugador1)) then
			jugador="15"
		elsif (playerEqual15(jugador1)) then 
	 		jugador="30" 
	 	elsif (playerEqual30(jugador1)) then
			jugador="40"	
		elsif (playerEqual40(jugador1) and playerEqualOrGreater40(jugador2)) then
			jugador="Advantage"
		elsif ( playerEqualAdvantage(jugador1) or (playerEqual40(jugador1) and !playerEqualAdvantage(jugador2)) ) then 
			jugador="Game"	
	 	end
	 	return jugador
  	end

  	

	def player1point
		@player1score=playerPoint(@player1score,@player2score)
		verifyEqualAdvantage(@player1score,@player2score)

	end

	def player2point
		@player2score=playerPoint(@player2score,@player1score)
		verifyEqualAdvantage(@player2score,@player1score)

	end

	def verifyEqualAdvantage(jugador1,jugador2)
		if(playerEqualAdvantage(jugador1) and player1EqualPlayer2(jugador1,jugador2))
			@player1score="40"
			@player2score="40"
		end
	end

	def showScore
		if(player1EqualPlayer2(@player1score,@player2score)) then
			if (playerEqualDeuceAndEquals(@player1score)) then
				return "Deuce"
			else
				return "#{@player1score} iguales"
			end
		else
			if(playerEqualAdvantage(@player1score) or playerEqualAdvantage(@player2score)) then
				return playerPointAdvantage(@player1score,@player2score)
			elsif (playerEqualGame(@player1score) or playerEqualGame(@player2score)) then
				return playerPointGame(@player1score,@player2score)
			else
				return "#{@player1score} - #{@player2score}"
			end
		end
	end 

	def playerPointAdvantage (jugador1,jugador2)
			if (jugador1=="Advantage") then
				return "Ventaja jugador 1"
			else
				return "Ventaja jugador 2"
			end
	end

	def playerPointGame (jugador1,jugador2)
			if (jugador1=="Game") then
				@player1score="0"
				@player2score="0"
				return "Juego jugador 1"
			else
				@player1score="0"
				@player2score="0"
				return "Juego jugador 2"
			end
	end

	def playerEqualOrGreater40(jugador)
  		return (!playerEqual0(jugador) and !playerEqual15(jugador) and !playerEqual30(jugador))
  	end

	def player1EqualPlayer2(jugador1,jugador2)
			return (jugador1==jugador2)
	end
	
	def playerEqualDeuceAndEquals (jugador)
			return playerEqual40(jugador)
	end

	def playerEqual0(jugador)
  		return jugador=="0"
  	end

  	def playerEqual15(jugador)
  		return jugador=="15"
  	end

  	def playerEqual30(jugador)
  		return jugador=="30"
  	end

  	def playerEqual40(jugador)
  		return jugador=="40"
  	end

  	def playerEqualAdvantage(jugador)
  		return jugador=="Advantage"
  	end

  	def playerEqualGame(jugador)
  		return jugador=="Game"
  	end

end