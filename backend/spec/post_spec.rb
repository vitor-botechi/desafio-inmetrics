describe "POST /acesso/cadastrar" do
  def cadastrar(payload)
    return HTTParty.post(
             "http://www.inmrobo.tk/accounts/signup/",
             body: payload.to_json,
             headers: { "Content-Type" => "application/json" },
           )
  end

  it "cadastrar novo usuário" do
    payload = { email: "vitor.botechi", empregadoId: "0", password: "123456" }

    resp = cadastrar(payload)

    expect(resp.code).to eql 200
  end
end
