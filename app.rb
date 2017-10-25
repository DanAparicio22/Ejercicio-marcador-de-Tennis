require 'sinatra'
require './lib/saludador'
get '/' do
  erb:principal
end

post '/jugarpartido' do
	jugador1= params[:jugador1]
	jugador2= params[:jugador2]
	saludador=Saludador.new
	@saludo = saludador.saluda(jugador1,jugador2)
	erb:marcador
end