Quando('faço uma requisição POST para o serviço de cadastro') do             
    @payload_incluir = build(:incluir).incluir_hash
    @request_incluir = cadastros.post_incluir(@payload_incluir)
  end                                                                          
 
  Então('o serviço de cadastro retorna com {int}') do |status_code|
    expect(@request_incluir.code).to eq status_code
    end                            
                                                                               
  Então('retorna o usuário criado') do                                         
    expect(@request_incluir['title']).to eql @payload_incluir[:title]
  end                                                                          