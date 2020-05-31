class Cliente < ApplicationRecord
  belongs_to :plano
  belongs_to :convenio
  has_many :veiculos
  has_many :estadias
end

