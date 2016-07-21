require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  def setup
    @user = users(:justin)
    @other_user = users(:stokely)
  end

  test "should redirect index when not logged in" do
    get :index
    assert_redirected_to root_url
  end

  test "should redirect index when logged in but not admin" do
    log_in_as(@other_user)
    get :index
    assert_redirected_to root_url
  end

  test "should get new with admin" do
    log_in_as(@user)
    get :new
    assert_response :success
  end

end
