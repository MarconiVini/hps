require 'test_helper'

class EstadiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estadia = estadia(:one)
  end

  test "should get index" do
    get estadia_url
    assert_response :success
  end

  test "should get new" do
    get new_estadia_url
    assert_response :success
  end

  test "should create estadia" do
    assert_difference('Estadia.count') do
      post estadia_url, params: { estadia: { clientes_codclie: @estadia.cliente_id, data_entrada: @estadia.data_entrada, data_saida: @estadia.data_saida, usuario_id: @estadia.usuario_id, vaga_id: @estadia.vaga_id, valor: @estadia.valor, veiculos_codveic: @estadia.veiculos_codveic } }
    end

    assert_redirected_to estadia_url(Estadia.last)
  end

  test "should show estadia" do
    get estadia_url(@estadia)
    assert_response :success
  end

  test "should get edit" do
    get edit_estadia_url(@estadia)
    assert_response :success
  end

  test "should update estadia" do
    patch estadia_url(@estadia), params: { estadia: { cliente_id: @estadia.cliente_id, data_entrada: @estadia.data_entrada, data_saida: @estadia.data_saida, loja_codestab: @estadia.loja_codestab, usuarios_id: @estadia.usuarios_id, vaga_id: @estadia.vaga_d, valor: @estadia.valor, veiculos_codveic: @estadia.veiculos_codveic } }
    assert_redirected_to estadia_url(@estadia)
  end

  test "should destroy estadia" do
    assert_difference('Estadia.count', -1) do
      delete estadia_url(@estadia)
    end

    assert_redirected_to estadia_url
  end
end
