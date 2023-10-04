require "application_system_test_case"

class AddressCategoriesTest < ApplicationSystemTestCase
  setup do
    @address_category = address_categories(:one)
  end

  test "visiting the index" do
    visit address_categories_url
    assert_selector "h1", text: "Address Categories"
  end

  test "creating a Address category" do
    visit address_categories_url
    click_on "New Address Category"

    fill_in "Name", with: @address_category.name
    click_on "Create Address category"

    assert_text "Address category was successfully created"
    click_on "Back"
  end

  test "updating a Address category" do
    visit address_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @address_category.name
    click_on "Update Address category"

    assert_text "Address category was successfully updated"
    click_on "Back"
  end

  test "destroying a Address category" do
    visit address_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address category was successfully destroyed"
  end
end
