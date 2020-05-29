require 'faker'
require 'cpf_faker'

FactoryBot.define do
  factory :convenio do
    cnpj { Faker::CNPJ.pretty }
    razao_social { Faker::Company.name }
    fantasia { Faker::Company.industry }
    estado 'SP'
    cep '13-098421'
    fone1 { "(19) #{rand(1000..9999)}-#{rand(1000..9999)}" } 
    fone2 { "(19) #{rand(1000..9999)}-#{rand(1000..9999)}" }
    email { Faker::Internet.email }
    ativo true
  end
end
