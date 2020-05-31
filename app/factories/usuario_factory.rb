require 'faker'

FactoryBot.define do
  factory :usuario do
    nome { Faker::Name.name }
    senha { rand(1..200_000) }
  end
end
