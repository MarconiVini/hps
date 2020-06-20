class Vaga < ApplicationRecord
  has_many :estadias

  def full_name
    "#{quadra} - #{tipo}"
  end
end
