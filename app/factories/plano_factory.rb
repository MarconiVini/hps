require 'faker'

FactoryBot.define do
  factory :plano do
    descricao { Faker::Company.name }
    valor { rand(1.1..100.10) }
    ativo true
  end
end
