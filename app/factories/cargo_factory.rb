require 'faker'

FactoryBot.define do
  factory :cargo do
    desc_cargo { Faker::Company.profession }
  end
end
