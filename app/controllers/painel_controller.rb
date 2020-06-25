class PainelController < ApplicationController
  def index
    @vagas = Vaga.all
  end
end
