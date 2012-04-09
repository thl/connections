require File.dirname(__FILE__) + '/../test_helper'

class ProjectProfileTest < ActiveSupport::TestCase
  
  def test_interests_blank?
    pp = ProjectProfile.new
    assert pp.interests_blank?
  end
  
  def test_interests_not_blank
    pp = ProjectProfile.new
    assert_equal [], pp.time_periods_of_interest_list
    pp.time_periods_of_interest_list << 'arbitrary-time-period-of-interest'

    # Transform the string list to real tags.
    pp.save

    assert_equal false, pp.interests_blank?,
      'expected to have nonblank interests after adding time period of interest'
  end
  
  def test_services_blank?
    pp = ProjectProfile.new
    assert pp.services_blank?,
      'expected profile to have no services after initialization'
  end
  
  def test_services_not_blank
    pp = ProjectProfile.new
    pp.data = 'arbitrary-text-string'
    assert_equal false, pp.services_blank?,
      'expected profile to have services after initialization'
  end
  
  def test_disciplines_tag_list
     p = ProjectProfile.new
     assert_equal [], p.discipline_list
     p.discipline_list << 'arbitrary-discipline'
     p.save # save to push the string items in discipline_list to real tags
     assert_equal 1, p.disciplines.size,
       'expected to see discipline in tags list'
     
     found = ProjectProfile.find_tagged_with('arbitrary-discipline', :on=>:disciplines).first
     assert_equal found.id, p.id
   end
end