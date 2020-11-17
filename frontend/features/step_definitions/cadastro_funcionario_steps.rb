# Funcionalidade: Cadastro de funcionários
Dado("que eu tenho o seguinte funcionário:") do |table|
  @employee = table.hashes.first
  #   Deletar Usuário da base
end

Quando("eu faço o cadastro desse funcionário") do
  @empregados_page.go
  @empregados_page.create(@employee)
end

#alterar
Então("devo ver este item na lista de funcionários") do
  expect(@login_page.is_login_page).to be_present
end
