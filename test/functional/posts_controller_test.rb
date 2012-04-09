require File.dirname(__FILE__) + '/../test_helper'

class PostsControllerTest < ActionController::TestCase
  def test_should_get_new
    login_as(:quentin) 
    get :new, :person_id => entities(:one).id
    assert_response :success
  end
  
  def test_should_show_post
    login_as(:quentin) 
    get :show, :person_id => entities(:one).id, :id => posts(:test).id
    assert_response :success
  end
  
  def test_should_create_post
    login_as(:quentin) 
    assert_difference('Post.count') do
      post :create, :person_id => entities(:one).id, :post => { :subject => "test", :body => "This is a test." }
    end 
  end

  def test_should_get_edit
    login_as(:quentin) 
    get :edit, :person_id => entities(:one).id, :id => posts(:test).id
    assert_response :success
  end
  
  def test_should_update_post
    login_as(:quentin) 
    put :update, :person_id => entities(:one).id, :post => { :subject => "test", :body => "This is also a test." }, :id => posts(:test).id
  end
  
  def test_should_destroy_post
    login_as(:quentin) 
    assert_difference('Post.count', -1) do
      delete :destroy, :person_id => entities(:one).id, :id => posts(:test).id
    end
  end

end
