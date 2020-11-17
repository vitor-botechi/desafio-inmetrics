describe "GET /acesso/login" do
  def auth(payload)
    return HTTParty.post(
             "http://www.inmrobo.tk/accounts/login/",
             body: payload.to_json,
             headers: { "Content-Type" => "application/json" },
           )
  end

  it "autorizar usuário" do
    payload = { email: "vitor.botechi", password: "123456" }
    resp = auth(payload)
    expect(resp.code).to eql 200
  end
end
