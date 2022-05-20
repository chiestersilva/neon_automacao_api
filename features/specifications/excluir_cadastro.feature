#language: pt

@excluir_cadastro
Funcionalidade: JSONPlaceholder
    Validar API JSONPlaceholder

    @delete_cadastro
        Cenário: Excluir um cadastro
        Quando faço uma requisição DELETE para o serviço de cadastro passando o id
        Então o serviço de cadastro retorna com 200