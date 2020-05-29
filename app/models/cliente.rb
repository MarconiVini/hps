class Cliente < ApplicationRecord
  belongs_to :plano
  belongs_to :convenio
end

