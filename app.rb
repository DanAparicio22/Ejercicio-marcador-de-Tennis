require 'sinatra'
require './lib/saludador'
require './lib/tennis'

score=Tennis.new
saludador=Saludador.new

get '/' do
  erb:principal
end

post '/jugarpartido' do
	score=Tennis.new
	saludador.set_jugador1(params[:jugador1])
	saludador.set_jugador2(params[:jugador2])
	@score = score.showScore
	@saludo = saludador.saludar
	erb:marcador
end

get '/jugarpartido' do
  erb:marcador
end

post '/anotar1' do
	jugador1 = saludador.get_jugador1
	jugador2 = saludador.get_jugador2
	score.player1point
	@score = score.showScore
	@saludo = saludador.saludar
	erb:marcador
end

post '/anotar2' do
	jugador1 = saludador.get_jugador1
	jugador2 = saludador.get_jugador2
	score.player2point
	@score = score.showScore
	@saludo = saludador.saludar
	erb:marcador
end

post '/regresar' do
	redirect '/'
end