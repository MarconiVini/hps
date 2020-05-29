require 'faker'
require 'cpf_faker'

FactoryBot.define do
  factory :loja do
    cnpj { Faker::CNPJ.pretty }
    razao_social { Faker::Company.name }
    fantasia { Faker::Company.industry }
    estado { 'SP' }
    cep { '13-098421' }
  end
end
