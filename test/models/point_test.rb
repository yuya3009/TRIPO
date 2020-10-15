require 'test_helper'

class PointTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    @point = @user.points.build(point: 50)
  end
  
  test "should be valid" do
    assert @point.valid?
  end

  test "user id should be present" do
    @point.user_id = nil
    assert_not @point.valid?
  end
  
  test "point order should be most recent first" do
    assert_equal points(:most_recent), Point.first
  end
end
