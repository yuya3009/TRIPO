require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "TRIPO_app"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | TRIPO_app"
  end
  
  test "should get active" do
    get active_path
    assert_response :success
    assert_select "title", "Active | TRIPO_app"
  end

end
