# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'

plano = Plano.new({descricao: "novo plano", ativo:true, valor:20.3})
plano.save

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
