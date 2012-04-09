require File.dirname(__FILE__) + '/../test_helper'

class HomeControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
  end

  def test_should_get_relate
    get :relate
    assert_response :success
  end

end
