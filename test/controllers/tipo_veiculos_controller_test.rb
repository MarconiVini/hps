require 'test_helper'

class TipoVeiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_veiculo = tipo_veiculos(:one)
  end

  test "should get index" do
    get tipo_veiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_veiculo_url
    assert_response :success
  end

  test "should create tipo_veiculo" do
    assert_difference('TipoVeiculo.count') do
      post tipo_veiculos_url, params: { tipo_veiculo: { tipo: @tipo_veiculo.tipo } }
    end

    assert_redirected_to tipo_veiculo_url(TipoVeiculo.last)
  end

  test "should show tipo_veiculo" do
    get tipo_veiculo_url(@tipo_veiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_veiculo_url(@tipo_veiculo)
    assert_response :success
  end

  test "should update tipo_veiculo" do
    patch tipo_veiculo_url(@tipo_veiculo), params: { tipo_veiculo: { tipo: @tipo_veiculo.tipo } }
    assert_redirected_to tipo_veiculo_url(@tipo_veiculo)
  end

  test "should destroy tipo_veiculo" do
    assert_difference('TipoVeiculo.count', -1) do
      delete tipo_veiculo_url(@tipo_veiculo)
    end

    assert_redirected_to tipo_veiculos_url
  end
end
