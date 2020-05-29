require 'faker'

FactoryBot.define do
  factory :tipo_veiculo do
    tipo { Faker::Vehicle.drive_types }
  end
end
