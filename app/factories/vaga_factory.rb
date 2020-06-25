require 'faker'

FactoryBot.define do
  factory :vaga do
    quadra { "quadra #{('A'..'D').to_a[rand(4)]}" }
    tipo { "vaga #{rand(1..40)}" }
    ocupada { false }
  end
end


# quadra A
# vaga A1
# vaga A2
# ...
# vaga A8
