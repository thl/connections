require File.dirname(__FILE__) + '/../test_helper'

class OrganizationsControllerTest < ActionController::TestCase
  
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations)
  end

  def test_should_get_new
    login_as(:nick)     
    get :new
    assert_response :success
  end

  def test_should_create_organization
    login_as(:nick)     
    assert_difference('Organization.count') do
      post :create, :organization => {:name=>'test'}
    end

    assert_redirected_to organization_path(assigns(:organization))
  end

  def test_should_create_organization_subproject
    login_as(:nick) 
    assert_difference('Relationship.count') do
      post :create_subproject, :id => entities(:arp).id, :entity => { "2" => "1" }
    end

    assert_redirected_to organization_path(assigns(:organization))
  end
  
  def test_should_get_new_organization_subproject
    login_as(:nick) 
    get :new_subproject, :id => entities(:arp).id
    assert_response :success
  end  
  
  def test_should_create_organization_member
    login_as(:nick) 
    assert_difference('Relationship.count') do
      post :create_member, :id => entities(:arp).id, :entity => { "1" => "1" }
    end

    assert_redirected_to organization_path(assigns(:organization))
  end

  def test_should_create_organization_member_email
    login_as(:nick) 
    assert_difference('Relationship.count') do
      post :create_member_email, :id => entities(:arp).id, :organization => { :invite_list => "aaron shmoe aaron@example.com" }
    end

    assert_redirected_to organization_path(assigns(:organization))
  end
  
  def test_should_join_organization
    #TODO
  end
    
  def test_should_get_find_organization_member
    login_as(:nick) 
    get :find_member, :id => entities(:arp).id
    assert_response :success
  end  

  def test_should_get_invite_organization_member
    login_as(:nick) 
    get :invite_member, :id => entities(:arp).id
    assert_response :success
  end  

  def test_should_show_organization
    get :show, :id => entities(:arp).id
    assert_response :success
  end

  def test_should_get_edit
    login_as(:nick)     
    get :edit, :id => entities(:arp).id
    assert_response :success
  end

  def test_should_update_organization
    login_as(:nick)     
    put :update, :id => entities(:arp).id, :organization => { }
    assert_redirected_to organization_path(assigns(:organization))
  end

  def test_should_remove_subproject
    login_as(:nick)     
    assert_difference('Relationship.count', -1) do
      delete :remove_subproject, :id => entities(:arp).id, :entity => entities(:two).id
    end
  end
  
  def test_should_destroy_organization
    login_as(:nick)     
    assert_difference('Organization.count', -1) do
      delete :destroy, :id => entities(:arp).id
    end

    assert_redirected_to organizations_path
  end
end
