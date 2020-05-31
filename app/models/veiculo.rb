class Veiculo < ApplicationRecord
  belongs_to :tipo_veiculo
  belongs_to :cliente
end
