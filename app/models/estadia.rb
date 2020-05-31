class Estadia < ApplicationRecord
  self.table_name = 'estadias'

  belongs_to :vaga
  belongs_to :veiculo
  belongs_to :cliente
  belongs_to :usuario
end
