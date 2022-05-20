class IncluirModel
    attr_accessor :title, :body, :userId

    def incluir_hash
        {
            title: @title,
            body: @body,
            userId: userId
        }
    end
end