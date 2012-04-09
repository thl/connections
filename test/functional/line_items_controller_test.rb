require File.dirname(__FILE__) + '/../test_helper'

class LineItemsControllerTest < ActionController::TestCase
   def test_should_create_line_item
     login_as(:quentin) 
     assert_difference('LineItem.count') do
       post :create, :person_id => entities(:one).id, :line_item => { :text => "test" }
     end 
   end

   def test_should_update_line_item
     login_as(:quentin) 
     put :update, :person_id => entities(:one).id, :line_item => { :text => "changed text" }, :id => line_items(:test).id
   end
   
   def test_should_destroy_line_item
     login_as(:quentin) 
     assert_difference('LineItem.count', -1) do
       delete :destroy, :person_id => entities(:one).id, :id => line_items(:test).id
     end
   end
end
