require 'test_helper'

class ClinicasVeterinariasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinicas_veterinaria = clinicas_veterinarias(:one)
  end

  test "should get index" do
    get clinicas_veterinarias_index_url
    assert_response :success
  end

  test "should get new" do
    get new_clinicas_veterinaria_url
    assert_response :success
  end

  test "should create clinicas_veterinaria" do
    assert_difference('ClinicasVeterinarias.count') do
      post clinicas_veterinarias_index_url, params: { clinicas_veterinaria: { email: @clinicas_veterinaria.email, endereco: @clinicas_veterinaria.endereco, nome: @clinicas_veterinaria.nome, telefone: @clinicas_veterinaria.telefone } }
    end

    assert_redirected_to clinicas_veterinaria_url(ClinicasVeterinarias.last)
  end

  test "should show clinicas_veterinaria" do
    get clinicas_veterinaria_url(@clinicas_veterinaria)
    assert_response :success
  end

  test "should get edit" do
    get edit_clinicas_veterinaria_url(@clinicas_veterinaria)
    assert_response :success
  end

  test "should update clinicas_veterinaria" do
    patch clinicas_veterinaria_url(@clinicas_veterinaria), params: { clinicas_veterinaria: { email: @clinicas_veterinaria.email, endereco: @clinicas_veterinaria.endereco, nome: @clinicas_veterinaria.nome, telefone: @clinicas_veterinaria.telefone } }
    assert_redirected_to clinicas_veterinaria_url(@clinicas_veterinaria)
  end

  test "should destroy clinicas_veterinaria" do
    assert_difference('ClinicasVeterinarias.count', -1) do
      delete clinicas_veterinaria_url(@clinicas_veterinaria)
    end

    assert_redirected_to clinicas_veterinarias_index_url
  end
end
