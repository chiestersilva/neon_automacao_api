module Rest
    class Cadastros
        include HTTParty

        headers 'content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_cadastros
            self.class.get('/posts')
        end

        def get_cadastro(id)
            self.class.get("/posts/#{id}")
        end
        def post_incluir(incluir)
            self.class.post('/posts', body: incluir.to_json)
        end
    end
end