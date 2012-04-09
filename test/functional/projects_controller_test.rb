require File.dirname(__FILE__) + '/../test_helper'

class ProjectsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  def test_should_get_new
    login_as(:nick) 
    get :new
    assert_response :success
  end

  def test_should_create_project_member
    login_as(:nick) 
    assert_difference('Relationship.count') do
      post :create_member, :id => entities(:two).id, :entity => { "3" => "1" }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  def test_should_create_project_member_email
    login_as(:nick) 
    assert_difference('Relationship.count') do
      post :create_member_email, :id => entities(:two).id, :project => { :invite_list => "aaron shmoe aaron@example.com" }
    end

    assert_redirected_to project_path(assigns(:project))
  end
  
  def test_should_get_find_project_member
    login_as(:nick) 
    get :find_member, :id => entities(:two).id
    assert_response :success
  end  

  def test_should_get_invite_project_member
    login_as(:nick) 
    get :invite_member, :id => entities(:two).id
    assert_response :success
  end  
  
  def test_should_join_project
    #TODO
  end

  def test_should_create_project
    login_as(:nick) 
    assert_difference('Project.count') do
      post :create, :project => {:name=>'test'}
    end

    assert_redirected_to project_path(assigns(:project))
  end

  def test_should_show_project
    get :show, :id => entities(:two).id
    assert_response :success
  end

  def test_should_get_edit
    login_as(:nick)   
    get :edit, :id => entities(:two).id
    assert_response :success
  end

  def test_should_update_project
    login_as(:nick)   
    put :update, :id => entities(:two).id, :project => { }
    assert_redirected_to project_path(assigns(:project))
  end

  def test_should_destroy_project
    login_as(:nick)   
    assert_difference('Project.count', -1) do
      delete :destroy, :id => entities(:two).id
    end

    assert_redirected_to projects_path
  end
end
