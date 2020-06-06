# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200531205822) do

  create_table "cargos", force: :cascade do |t|
    t.string "desc_cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "cnpj"
    t.string "razao_social"
    t.string "fantasia"
    t.string "estado"
    t.string "cep"
    t.string "fone1"
    t.string "fone2"
    t.string "email"
    t.boolean "ativo"
    t.integer "plano_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "convenio_id"
    t.index ["convenio_id"], name: "index_clientes_on_convenio_id"
    t.index ["plano_id"], name: "index_clientes_on_plano_id"
  end

  create_table "convenios", force: :cascade do |t|
    t.string "cnpj"
    t.string "razao_social", limit: 15
    t.string "fantasia", limit: 50
    t.string "estado", limit: 2
    t.string "cep", limit: 8
    t.string "fone1", limit: 12
    t.string "fone2", limit: 12
    t.string "email", limit: 120
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estadias", force: :cascade do |t|
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "data_entrada"
    t.datetime "data_saida"
    t.integer "vaga_id"
    t.integer "veiculo_id"
    t.integer "cliente_id"
    t.integer "usuario_id"
    t.index ["cliente_id"], name: "index_estadias_on_cliente_id"
    t.index ["usuario_id"], name: "index_estadias_on_usuario_id"
    t.index ["vaga_id"], name: "index_estadias_on_vaga_id"
    t.index ["veiculo_id"], name: "index_estadias_on_veiculo_id"
  end

  create_table "planos", force: :cascade do |t|
    t.text "descricao"
    t.decimal "valor"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_veiculos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cargo_id"
    t.index ["cargo_id"], name: "index_usuarios_on_cargo_id"
  end

  create_table "vagas", force: :cascade do |t|
    t.string "quadra", limit: 10
    t.string "tipo", limit: 15
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "placa"
    t.string "modelo"
    t.string "marca"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tipo_veiculo_id"
    t.integer "cliente_id"
    t.index ["cliente_id"], name: "index_veiculos_on_cliente_id"
    t.index ["tipo_veiculo_id"], name: "index_veiculos_on_tipo_veiculo_id"
  end

end
