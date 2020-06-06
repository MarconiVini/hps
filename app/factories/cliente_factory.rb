require 'faker'

FactoryBot.define do
  factory :cliente do
    cnpj { Faker::CNPJ.pretty }
    razao_social { Faker::Company.name }
    fantasia { Faker::Company.industry }
    estado { 'SP' }
    cep { "13-0#{rand(100_000..999_999)}" }
    fone1 { "(19) #{rand(1000..9999)}-#{rand(1000..9999)}" } 
    fone2 { "(19) #{rand(1000..9999)}-#{rand(1000..9999)}" }
    email { Faker::Internet.email }
    ativo { true }
  end
end
