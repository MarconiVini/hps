# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'pry'
require 'factory_bot'
Dir['./app/factories/*.rb'].each { |file| require file }
include FactoryBot::Syntax::Methods
include ActionView::Helpers::DateHelper

def separators(message)
  string_msg = '-' * 5
  string_msg << ' '
  string_msg << message
  puts string_msg
end
separators 'Criando Planos'
create_list(:plano, 12)

separators 'Criando Convenios'
create_list(:convenio, 12)

separators 'Criando Vagas'
create_list(:vaga, 40)
@vagas = Vaga.all
@vagas_size = @vagas.size - 1

separators 'Criando tipo_veiculos'
create_list(:tipo_veiculo, 3)

separators 'Criando Cargos'
cargo = create(:cargo, desc_cargo: 'Operador de caixa')
cargo2 = create(:cargo, desc_cargo: 'Gerente')
cargo3 = create(:cargo, desc_cargo: 'Manobrista')

separators 'Criando usuarios com cargo'
create(:usuario, cargo: cargo3)
create(:usuario, cargo: cargo2)
@operador = create(:usuario, cargo: cargo)

planos = Plano.all
convenios = Convenio.all
planos_size = planos.size - 1
convenios_size = convenios.size - 1

separators 'Criando gerentes, com plano e convenios'
cliente = create(:cliente, plano: planos[rand(1..planos_size)], convenio: convenios[rand(1..convenios_size)])
cliente1 = create(:cliente, plano: planos[rand(1..planos_size)], convenio: convenios[rand(1..convenios_size)])
cliente2 = create(:cliente, plano: planos[rand(1..planos_size)], convenio: convenios[rand(1..convenios_size)])

separators 'Criando veiculos'
tipos_veiculos = TipoVeiculo.all.to_a
create_list(:veiculo, 2, tipo_veiculo: tipos_veiculos[0], cliente: cliente)
create_list(:veiculo, 4, tipo_veiculo: tipos_veiculos[1], cliente: cliente1)
create_list(:veiculo, 6, tipo_veiculo: tipos_veiculos[2], cliente: cliente2)

separators "Criando estadias para o cliente - #{cliente.razao_social}."

def make_estadias_for_cliente(cliente)
  cliente.veiculos.each do |veiculo|
    numero_estadias = rand(2..12)
    puts '*' * 20
    puts "Criando #{numero_estadias} Estadias para veiculo #{veiculo.placa}, do cliente #{cliente.razao_social}"    
    numero_estadias.times do
      #binding.pry
      estadia = create(:estadia, 
        vaga: @vagas[rand(1..@vagas_size)],
        veiculo: veiculo,
        cliente: cliente,
        usuario: @operador
      )
      tempo_total = distance_of_time_in_words(estadia.data_entrada, estadia.data_saida)
      puts "Gerado estadia para a vaga #{estadia.vaga.quadra}-#{estadia.vaga.tipo} -- na data #{estadia.data_entrada} -- for #{tempo_total}."
      #sleep 0.2
    end
  end
end

make_estadias_for_cliente cliente
make_estadias_for_cliente cliente1
make_estadias_for_cliente cliente2

puts '******************************* DONE *******************************'

puts "----- ZEREI ----- YEAHHHH -------"