Dado('Que desejo obter o endereço de um respectivo {string}') do |cep|
    @cep = cep
end
  
Quando('faço uma requisição GET para obter o endereço') do
    @request_cep = cep.get_cep(@cep)
end
  
Então('o serviço deve responder com {int}') do |status_code|
    expect(@request_cep.code).to eql status_code
end
  
E('retorna detalhes do endereço') do
    expect(@request_cep.body).not_to be_nil
end

  
Então('retorna detalhes do {string}') do |endereco|
    expect(@request_cep['logradouro']).to eql endereco
end

