require 'faker'

FactoryBot.define do
  factory :tipo_veiculo do
    tipo { Faker::Vehicle.unique.drive_types }
  end
end
