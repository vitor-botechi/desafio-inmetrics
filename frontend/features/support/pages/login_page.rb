class LoginPage < BasePage
  def go
    visit "http://www.inmrobo.tk/accounts/login/"
  end

  def with(usuario, senha)
    find("input[name=username]").set usuario
    find("input[name=pass]").set senha
    click_button "Entre"
  end

  def alert
    return find(".alert").text
  end

  def is_login_page
    return find("input[class=txt2 bo1]")
  end
end
