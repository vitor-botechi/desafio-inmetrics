# Funcionalidade: Cadastro de usuário
Dado("que eu tenho o seguinte usuário:") do |table|
  @user = table.hashes.first
  #   Deletar Usuário da base
end

Quando("eu faço o cadastro desse usuário") do
  @cadastro_page.go
  @cadastro_page.with(@user["usuario"], @user["senha"], @user["confirma_senha"])
end

Então("devo ser cadastrado") do
  expect(@login_page.is_login_page).to be_present
end

Então("devo ver uma mensagem de alerta {string}") do |expected_alert|
  expect(@cadastro_page.alert).to eql expected_alert
end
