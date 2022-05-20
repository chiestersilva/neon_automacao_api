#language: pt

@cadastro
Funcionalidade: JSONPlaceholder
    Validar API JSONPlaceholder

    @get_cadastros
        Cenário: Validar consulta de todos os cadastros
        Quando faço a uma requisição GET para o serviço de cadastros
        Então o serviço de cadastro deve responder com 200
        E retornar a lista de cadastros

    @get_cadastro_individual
        Cenário: Validar consulta de um cadastro
        Quando faço a uma requisição GET para o serviço de cadastros passando id
        Então o serviço de cadastro deve responder com 200
        E retornar o cadastro