class HomeController < ApplicationController
  #before_action :set_cargo, only: [:show, :edit, :update, :destroy]

  # GET /home
  # GET /home.json
  def index
    @nome_principal = "Felipe Verza!"
  end
end
