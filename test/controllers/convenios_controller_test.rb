require 'test_helper'

class ConveniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @convenio = convenios(:one)
  end

  test "should get index" do
    get convenios_url
    assert_response :success
  end

  test "should get new" do
    get new_convenio_url
    assert_response :success
  end

  test "should create convenio" do
    assert_difference('Convenio.count') do
      post convenios_url, params: { convenio: { ativo: @convenio.ativo, cep: @convenio.cep, cnpj: @convenio.cnpj, email: @convenio.email, estado: @convenio.estado, fantasia: @convenio.fantasia, fone1: @convenio.fone1, fone2: @convenio.fone2, razao_social: @convenio.razao_social } }
    end

    assert_redirected_to convenio_url(Convenio.last)
  end

  test "should show convenio" do
    get convenio_url(@convenio)
    assert_response :success
  end

  test "should get edit" do
    get edit_convenio_url(@convenio)
    assert_response :success
  end

  test "should update convenio" do
    patch convenio_url(@convenio), params: { convenio: { ativo: @convenio.ativo, cep: @convenio.cep, cnpj: @convenio.cnpj, email: @convenio.email, estado: @convenio.estado, fantasia: @convenio.fantasia, fone1: @convenio.fone1, fone2: @convenio.fone2, razao_social: @convenio.razao_social } }
    assert_redirected_to convenio_url(@convenio)
  end

  test "should destroy convenio" do
    assert_difference('Convenio.count', -1) do
      delete convenio_url(@convenio)
    end

    assert_redirected_to convenios_url
  end
end
