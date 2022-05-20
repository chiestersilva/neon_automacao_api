Quando('faço a uma requisição GET para o serviço de cadastros') do
    @request_cadastros = cadastros.get_cadastros
end

Então('o serviço de cadastro deve responder com {int}') do |status_code|
    expect(@request_cadastros.code).to eq status_code
end

Então('retornar a lista de cadastros') do
    expect(@request_cadastros.message).not_to be_empty 
end


Quando('faço a uma requisição GET para o serviço de cadastros passando id') do
    @id=sort_id.to_i
    @request_cadastros = cadastros.get_cadastro(@id)
  end
  
  Então('retornar o cadastro') do
    expect(@request_cadastros.parsed_response['id']).to eql @id
  end