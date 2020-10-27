require 'test_helper'

class UsingPointsTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
    log_in_as(@user)
  end

  test "use points" do
    get edit_point_path(@user)
    assert_template 'points/edit'
    post points_path, params: { point: { point: 250 } }
    assert_equal 200,  user_point.amount
    assert_not flash.empty?
    @point.save
    assert_redirected_to controller: :points, action: :show
    #ポイントが少ない場合
    post points_path, params: { point: { point: 150 } }
    assert_not flash.empty?
    assert_template 'users/show'
  end
end
