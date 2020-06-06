require 'faker'

FactoryBot.define do
  factory :veiculo do
    placa { "EDE #{rand(1000..9999)}" }
    modelo { Faker::Vehicle.makes }

    marca do 
      models = Faker::Vehicle.models_by_make[self.modelo.to_sym]
      models[rand(0..(models.size - 1))]
    end

    cor { Faker::Vehicle.color }

    # before(:create) do |veiculo|
    #   veiculo.tipo_veiculo = create(:tipo_veiculo)
    # end
  end
end
