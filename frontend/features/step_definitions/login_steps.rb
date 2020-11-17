# Funcionalidade: Login
# "Traduzem" o login.feature
Dado("que acesso a página principal") do
  @login_page.go
end

Quando("eu submeto minhas credenciais {string} e {string}") do |usuario, senha|
  @login_page.with(usuario, senha)
end

Então("devo ser autenticado") do
  expect(@empregados_page.logged_user).to be_present
end

Então("devo ver uma mensagem de alerta {string}") do |expected_alert|
  expect(@login_page.alert).to eql expected_alert
end
