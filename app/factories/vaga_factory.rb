require 'faker'

FactoryBot.define do
  factory :vaga do
    quadra { "vaga #{rand(1..40)}" }
    tipo { "tipo #{('A'..'Z').to_a[rand(23)]}" }
  end
end
