require 'test_helper'

class Prueba2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prueba2_index_url
    assert_response :success
  end

  test "should get empresa" do
    get prueba2_empresa_url
    assert_response :success
  end

end
