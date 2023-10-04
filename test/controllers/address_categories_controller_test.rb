require "test_helper"

class AddressCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_category = address_categories(:one)
  end

  test "should get index" do
    get address_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_address_category_url
    assert_response :success
  end

  test "should create address_category" do
    assert_difference('AddressCategory.count') do
      post address_categories_url, params: { address_category: { name: @address_category.name } }
    end

    assert_redirected_to address_category_url(AddressCategory.last)
  end

  test "should show address_category" do
    get address_category_url(@address_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_category_url(@address_category)
    assert_response :success
  end

  test "should update address_category" do
    patch address_category_url(@address_category), params: { address_category: { name: @address_category.name } }
    assert_redirected_to address_category_url(@address_category)
  end

  test "should destroy address_category" do
    assert_difference('AddressCategory.count', -1) do
      delete address_category_url(@address_category)
    end

    assert_redirected_to address_categories_url
  end
end
