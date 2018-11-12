require "application_system_test_case"

class PaisesTest < ApplicationSystemTestCase
  setup do
    @paise = paises(:one)
  end

  test "visiting the index" do
    visit paises_url
    assert_selector "h1", text: "Paises"
  end

  test "creating a Paise" do
    visit paises_url
    click_on "New Paise"

    fill_in "Codigo", with: @paise.codigo
    fill_in "Nombre", with: @paise.nombre
    click_on "Create Paise"

    assert_text "Paise was successfully created"
    click_on "Back"
  end

  test "updating a Paise" do
    visit paises_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @paise.codigo
    fill_in "Nombre", with: @paise.nombre
    click_on "Update Paise"

    assert_text "Paise was successfully updated"
    click_on "Back"
  end

  test "destroying a Paise" do
    visit paises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paise was successfully destroyed"
  end
end
