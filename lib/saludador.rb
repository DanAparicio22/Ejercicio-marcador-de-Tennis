class Saludador

	def initialize(jugador1,jugador2)     
    	@jugador1 = jugador1  
   		@jugador2 = jugador2 
  	end

  	def initialize
    	@jugador1 = "jugador 1" 
   		@jugador2 = "jugador 2"
  	end

  	def get_jugador1 
        @jugador1
    end

    def set_jugador1 ( jugador1 )
        @jugador1 = jugador1
    end

   	def get_jugador2 
        @jugador2
    end

    def set_jugador2 ( jugador2 )
        @jugador2 = jugador2
    end

	def saluda(jugador1,jugador2)
		@jugador1 = jugador1  
   		@jugador2 = jugador2
		return saludar
	end

	def saludar     
    	@jugador1 + " - "+@jugador2 
  	end
end