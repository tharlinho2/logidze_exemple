require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "creating a Address" do
    visit addresses_url
    click_on "New Address"

    fill_in "Address category", with: @address.address_category_id
    fill_in "Address line", with: @address.address_line
    fill_in "Address number", with: @address.address_number
    fill_in "City name", with: @address.city_name
    fill_in "District name", with: @address.district_name
    fill_in "State name", with: @address.state_name
    fill_in "Type cd", with: @address.type_cd
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_on "Edit", match: :first

    fill_in "Address category", with: @address.address_category_id
    fill_in "Address line", with: @address.address_line
    fill_in "Address number", with: @address.address_number
    fill_in "City name", with: @address.city_name
    fill_in "District name", with: @address.district_name
    fill_in "State name", with: @address.state_name
    fill_in "Type cd", with: @address.type_cd
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
end
