class CadastroPage < BasePage
  def go
    visit "http://www.inmrobo.tk/accounts/signup/"
  end

  def with(usuario, senha, confirma_senha)
    find("input[name=username]").set usuario
    find("input[name=pass]").set senha
    find("input[name=confirmpass]").set confirma_senha
    click_button "Cadastrar"
  end

  def alert
    return find(".alert").text
  end
end
