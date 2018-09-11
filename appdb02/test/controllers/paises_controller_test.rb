require 'test_helper'

class PaisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paises_index_url
    assert_response :success
  end

  test "should get new" do
    get paises_new_url
    assert_response :success
  end

  test "should get create" do
    get paises_create_url
    assert_response :success
  end

  test "should get edit" do
    get paises_edit_url
    assert_response :success
  end

  test "should get update" do
    get paises_update_url
    assert_response :success
  end

  test "should get destroy" do
    get paises_destroy_url
    assert_response :success
  end

end
