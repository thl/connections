require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tools)
  end

  def test_should_get_new
    login_as(:nick)
    get :new
    assert_response :success
  end

  def test_should_create_tool
    login_as(:nick)
    post :create, :tool => { :name => 'arbitrary-tool-name' }

    assert_redirected_to tool_path(assigns(:tool))
  end

  def test_should_show_tool
    get :show, :id => tool_profiles(:sample_tool_one).tool_id
    assert_response :success
  end

  def test_should_get_edit
    login_as(:nick)
    get :edit, :id => tool_profiles(:sample_tool_one).tool_id
    assert_response :success
  end

  def test_should_update_tool
    login_as(:nick)
    put :update, :id => tool_profiles(:sample_tool_one).tool_id, :tool => { :name => 'Fathom' }
    assert_redirected_to tool_path(assigns(:tool))
  end

  def test_should_destroy_tool
    login_as(:nick)
    assert_difference('Tool.count', -1) do
      delete :destroy, :id => tool_profiles(:sample_tool_one).tool_id
    end

    assert_redirected_to tools_path
  end
end
