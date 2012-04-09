require File.dirname(__FILE__) + '/../test_helper'

class PeopleControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end
  
  def test_should_get_me
    login_as(:quentin)     
    get :me
    assert_response :success
  end
  
  def test_request_full
    # TODO
  end
  
  def test_submit_request
    # TODO
  end
  
  def test_join_project
    login_as(:quentin)     
    get :join_project, :id => entities(:one).id
    assert_response :success    
  end
  
  def test_join_organization
    login_as(:quentin)     
    get :join_organization, :id => entities(:one).id
    assert_response :success      
  end
  
  def test_create_project_membership
    login_as(:quentin)     
    post :create_project_membership, :id => entities(:one).id, :entity => { "5" => "1" }
    assert_redirected_to person_path(entities(:one))
  end
  
  def test_create_organization_membership
    login_as(:quentin)     
    post :create_organization_membership, :id => entities(:one).id, :entity => { "7" => "1" }
    assert_redirected_to person_path(entities(:one))
  end

  def test_should_show_person
    get :show, :id => entities(:one).id
    assert_response :success
  end

  def test_should_get_edit
    login_as(:quentin) 
    get :edit, :id => entities(:one).id
    assert_response :success
  end

  def test_should_update_person
    login_as(:quentin) 
    put :update, :id => entities(:one).id, :person => { }
    assert_redirected_to person_path(assigns(:person))
  end

end
