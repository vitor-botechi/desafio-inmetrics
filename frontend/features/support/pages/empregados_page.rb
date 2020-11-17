class EmpregadosPage < BasePage
  def go
    find("input[href=/empregados/new_empregado]").click
  end

  def create(empregado)
    find("input[id=inputNome]").set empregado["nome"]
    find("input[id=inputCargo]").set empregado["cargo"]

    #Bug na aplicação: CPF inválido
    find("input[id=cpf]").set empregado["cpf"]

    find("input[id=dinheiro]").set empregado["salario"]

    #comboBox
    status_element = find("#status")
    option = status_element.find("option", text: empregado["sexo"])
    option.select_option

    choose(empregado["tipo_contratacao"])
    find("input[id=inputAdmissao]").set empregado["admissao"]

    click_button "Submit"
  end

  def logged_user
    return find("input[id=logout]")
  end
end
