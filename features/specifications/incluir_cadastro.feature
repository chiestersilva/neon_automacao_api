#language: pt

@incluir_cadastro
Funcionalidade: JSONPlaceholder
    Validar API JSONPlaceholder

    @post_cadastro
        Cenário: Incluir um cadastro
        Quando faço uma requisição POST para o serviço de cadastro
        Então o serviço de cadastro retorna com 201 
        E retorna o usuário criado