Feature: Como jugador
		 Quiero anotar puntos
		 Para ganar el partido
Scenario:
	Given visito la pagina de inicio
	Then deberia saludar con "Bienvenido"

Scenario:
	Given visito la pagina de inicio
	When escribo el nombre del jugador 1 "Pedro" en el campo "jugador1" 
	And escribo el nombre del jugador 2 "Pepe" en el campo "jugador2"
	And presiono el boton "jugar"
	Then deberia mostrar los dos nombres "Pedro Pepe"

Scenario:
	Given visito la pagina de marcador
	When presiono el boton de "puntoj1"
	Then deberia mostrar el puntaje "15 0"

Scenario:
	Given visito la pagina de marcador
	When presiono el boton de "puntoj2"
	Then deberia mostrar el puntaje "0 15"

Scenario:
	Given visito la pagina de marcador
	When presiono el boton "regresar"
	Then deberia visitar la pagina de inicio


