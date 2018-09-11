require 'test_helper'

class MensajesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mensajes_index_url
    assert_response :success
  end

  test "should get new" do
    get mensajes_new_url
    assert_response :success
  end

  test "should get create" do
    get mensajes_create_url
    assert_response :success
  end

  test "should get edit" do
    get mensajes_edit_url
    assert_response :success
  end

  test "should get update" do
    get mensajes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mensajes_destroy_url
    assert_response :success
  end

end
