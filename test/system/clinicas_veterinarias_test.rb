require "application_system_test_case"

class ClinicasVeterinariasTest < ApplicationSystemTestCase
  setup do
    @clinicas_veterinaria = clinicas_veterinarias(:one)
  end

  test "visiting the index" do
    visit clinicas_veterinarias_url
    assert_selector "h1", text: "Clinicas Veterinarias"
  end

  test "creating a Clinicas veterinarias" do
    visit clinicas_veterinarias_url
    click_on "New Clinicas Veterinarias"

    fill_in "Email", with: @clinicas_veterinaria.email
    fill_in "Endereco", with: @clinicas_veterinaria.endereco
    fill_in "Nome", with: @clinicas_veterinaria.nome
    fill_in "Telefone", with: @clinicas_veterinaria.telefone
    click_on "Create Clinicas veterinarias"

    assert_text "Clinicas veterinarias was successfully created"
    click_on "Back"
  end

  test "updating a Clinicas veterinarias" do
    visit clinicas_veterinarias_url
    click_on "Edit", match: :first

    fill_in "Email", with: @clinicas_veterinaria.email
    fill_in "Endereco", with: @clinicas_veterinaria.endereco
    fill_in "Nome", with: @clinicas_veterinaria.nome
    fill_in "Telefone", with: @clinicas_veterinaria.telefone
    click_on "Update Clinicas veterinarias"

    assert_text "Clinicas veterinarias was successfully updated"
    click_on "Back"
  end

  test "destroying a Clinicas veterinarias" do
    visit clinicas_veterinarias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clinicas veterinarias was successfully destroyed"
  end
end
