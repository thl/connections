require File.dirname(__FILE__) + '/../test_helper'

class LinksControllerTest < ActionController::TestCase  
   def test_should_get_new
     login_as(:quentin) 
     get :new, :person_id => entities(:one).id
     assert_response :success
   end

   def test_should_create_link
     login_as(:quentin) 
     assert_difference('Link.count') do
       post :create, :person_id => entities(:one).id, :link => { :label => "google", :url => "www.google.com" }
     end 
   end

   def test_should_get_edit
     login_as(:quentin) 
     get :edit, :person_id => entities(:one).id, :id => links(:google).id
     assert_response :success
   end
   
   def test_should_update_link
     login_as(:quentin) 
     put :update, :person_id => entities(:one).id, :link => { :label => "yahoo", :url => "www.yahoo.com" }, :id => links(:google).id
   end
   
   def test_should_destroy_link
     login_as(:quentin) 
     assert_difference('Link.count', -1) do
       delete :destroy, :person_id => entities(:one).id, :id => links(:google).id
     end
   end
end
