require "application_system_test_case"

class PortafoliosTest < ApplicationSystemTestCase
  setup do
    @portafolio = portafolios(:one)
  end

  test "visiting the index" do
    visit portafolios_url
    assert_selector "h1", text: "Portafolios"
  end

  test "creating a Portafolio" do
    visit portafolios_url
    click_on "New Portafolio"

    fill_in "Email", with: @portafolio.email
    fill_in "First name", with: @portafolio.first_name
    fill_in "Lat name", with: @portafolio.lat_name
    fill_in "Twitter", with: @portafolio.twitter
    click_on "Create Portafolio"

    assert_text "Portafolio was successfully created"
    click_on "Back"
  end

  test "updating a Portafolio" do
    visit portafolios_url
    click_on "Edit", match: :first

    fill_in "Email", with: @portafolio.email
    fill_in "First name", with: @portafolio.first_name
    fill_in "Lat name", with: @portafolio.lat_name
    fill_in "Twitter", with: @portafolio.twitter
    click_on "Update Portafolio"

    assert_text "Portafolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Portafolio" do
    visit portafolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portafolio was successfully destroyed"
  end
end
