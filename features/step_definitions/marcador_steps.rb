Given("visito la pagina de inicio") do
   visit('/')
end

Then("deberia saludar con {string}") do |mensaje|
  expect(last_response.body) =~ /#{mensaje}/
end

When("escribo el nombre del jugador 1 {string} en el campo {string}") do |nombre, campoJug1|
  fill_in(campoJug1, :with=>nombre)
end

When("escribo el nombre del jugador 2 {string} en el campo {string}") do |nombre, campoJug2|
  fill_in(campoJug2, :with=>nombre)
end

When("presiono el boton {string}") do |boton|
  click_button(boton)
end

Then("deberia mostrar los dos nombres {string}") do |mensaje|
  expect(last_response.body) =~ /#{mensaje}/
end