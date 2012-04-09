require File.dirname(__FILE__) + '/../test_helper'
require 'users_controller'

# Re-raise errors caught by the controller.
class UsersController; def rescue_action(e) raise e end; end

class UsersControllerTest < Test::Unit::TestCase

  fixtures :users

  def setup
    @controller = UsersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end
  
  def teardown
    #User.all.each{|u|u.destroy}
  end
  
  def test_should_allow_signup
    assert_difference 'User.count' do
      create_user
      assert_response :redirect
    end
  end
  
  def test_should_display_index
    login_as(:quentin)
    get :index
    assert_response :success
  end
  
  def test_should_allow_updates
    login_as(:aaron)
    user = users(:quentin)
    data = [{ 'id' => user.id, 'name' => user.person.name, 'email' => user.email, 'access' => 'Full', 'disable' => false, 'request' => false }]
    post :update, :data => data.to_json
    modified_user = User.find(user.id)
    assert user.access_level != modified_user.access_level        
  end

  def test_should_require_password_on_signup
    assert_no_difference 'User.count' do
      create_user(:password => nil)
      assert assigns(:user).errors.on(:password)
      assert_response :success
    end
  end

  def test_should_require_password_confirmation_on_signup
    assert_no_difference 'User.count' do
      create_user(:password_confirmation => nil)
      assert assigns(:user).errors.on(:password_confirmation)
      assert_response :success
    end
  end

  def test_should_require_email_on_signup
    assert_no_difference 'User.count' do
      create_user(:email => nil)
      assert assigns(:user).errors.on(:email)
      assert_response :success
    end
  end
  

  protected
    def create_user(options = {})
      post :create, :user => { :login => 'quire', :email => 'quire@example.com',
        :password => 'quire', :password_confirmation => 'quire', :first_name=>'f quire', :last_name=>'l quire' }.merge(options)
    end
end