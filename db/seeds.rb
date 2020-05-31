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

create_list(:plano, 12)
create_list(:convenio, 12)
create_list(:cargo, 5)
create_list(:vaga, 40)
create_list(:tipo_veiculo, 3)

tipos_veiculos = TipoVeiculo.all.to_a
create_list(:veiculo, 8, tipo_veiculo: tipos_veiculos[0])
create_list(:veiculo, 4, tipo_veiculo: tipos_veiculos[1])
create_list(:veiculo, 14, tipo_veiculo: tipos_veiculos[2])

#binding.pry

cliente = Cliente.new({
  cnpj: '383838383',
  razao_social: '003003003',
  fantasia: 'Marcos SA',
  estado: 'SP',
  cep: '13-089734',
  fone1: '19-92929393',
  fone2: '19-88384884',
  email: 'cardosounicamp@gmail.com',
  ativo: true
})

plano = Plano.all.first

cliente.plano = plano

cliente.save

cliente1 = Cliente.new({
  cnpj: '111111111',
  razao_social: '003003003',
  fantasia: 'Felipe SA',
  estado: 'BA',
  cep: '13-089734',
  fone1: '38-92929393',
  fone2: '38-88384884',
  email: 'felipe.verza@gmail.com',
  ativo: true
})

cliente1.plano = plano

cliente1.save
