require 'test_helper'

class PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parts_index_url
    assert_response :success
  end

  test "should get new" do
    get parts_new_url
    assert_response :success
  end

end
