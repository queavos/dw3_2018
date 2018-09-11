require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paginas_index_url
    assert_response :success
  end

  test "should get empresa" do
    get paginas_empresa_url
    assert_response :success
  end

  test "should get contacto" do
    get paginas_contacto_url
    assert_response :success
  end

end
