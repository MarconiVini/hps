class Vaga < ApplicationRecord
  has_many :estadias

  def full_name
    "#{quadra} - #{tipo}"
  end

  def self.desocupadas
    self.where(ocupada: false)
  end
end
