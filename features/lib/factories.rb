require 'faker'
require_relative '../models/incluir_cadastro_model'

def sort_id
    user_file = YAML.load_file('features/support/massa/cadastros.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do
    factory :incluir, class: IncluirModel do
        title {Faker::Name.name}
        body {Faker::Name.name}
        userId {Faker::Number.number(digits: 2)}
    end
end