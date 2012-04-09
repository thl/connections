require File.dirname(__FILE__) + '/../test_helper'

class PersonProfileTest < ActiveSupport::TestCase
  def test_validate
     link = PersonProfile.new
     link.home_page = "foo.com"
     link.validate
     assert link.home_page.starts_with?("http://")
   end
   
   def test_professional_profiles
     profile = PersonProfile.new
     profile.professional_profiles << professional_profiles(:faculty)
     assert !profile.professional_profiles.empty?
   end
   
   def test_disciplines_tag_list
     p = PersonProfile.new
     assert_equal [], p.discipline_list
     p.discipline_list << 'Religious Studies'
     p.save # save to push the string items in discipline_list to real tags
     assert_equal 1, p.disciplines.size
     
     found = PersonProfile.find_tagged_with('Religious Studies', :on=>:disciplines).first
     assert_equal found.id, p.id
   end
   
end