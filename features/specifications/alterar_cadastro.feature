#language: pt

@alterar_cadastro
Funcionalidade: JSONPlaceholder
    Validar API JSONPlaceholder

    @put_cadastro
        Cenário: Alterar um cadastro
        Quando faço uma requisição PUT para o serviço de cadastro passando a id
        Então o serviço de cadastro retorna com 200
        E retorna o usuário alterado