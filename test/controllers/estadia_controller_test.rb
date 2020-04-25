require 'test_helper'

class EstadiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estadium = estadia(:one)
  end

  test "should get index" do
    get estadia_url
    assert_response :success
  end

  test "should get new" do
    get new_estadium_url
    assert_response :success
  end

  test "should create estadium" do
    assert_difference('Estadium.count') do
      post estadia_url, params: { estadium: { clientes_codclie: @estadium.clientes_codclie, data_entrada: @estadium.data_entrada, data_saida: @estadium.data_saida, loja_codestab: @estadium.loja_codestab, usuarios_id: @estadium.usuarios_id, vagas_codvaga: @estadium.vagas_codvaga, valor: @estadium.valor, veiculos_codveic: @estadium.veiculos_codveic } }
    end

    assert_redirected_to estadium_url(Estadium.last)
  end

  test "should show estadium" do
    get estadium_url(@estadium)
    assert_response :success
  end

  test "should get edit" do
    get edit_estadium_url(@estadium)
    assert_response :success
  end

  test "should update estadium" do
    patch estadium_url(@estadium), params: { estadium: { clientes_codclie: @estadium.clientes_codclie, data_entrada: @estadium.data_entrada, data_saida: @estadium.data_saida, loja_codestab: @estadium.loja_codestab, usuarios_id: @estadium.usuarios_id, vagas_codvaga: @estadium.vagas_codvaga, valor: @estadium.valor, veiculos_codveic: @estadium.veiculos_codveic } }
    assert_redirected_to estadium_url(@estadium)
  end

  test "should destroy estadium" do
    assert_difference('Estadium.count', -1) do
      delete estadium_url(@estadium)
    end

    assert_redirected_to estadia_url
  end
end
