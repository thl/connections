require File.dirname(__FILE__) + '/../test_helper'

class RelationshipTest < ActiveSupport::TestCase
  def test_add_person_to_project
    assert Relationship.add_person_to_project( entities(:one), entities(:ivanhoe) )    
    ivanhoe = Project.find(entities(:ivanhoe))
    assert_not_nil ivanhoe
    assert ivanhoe.people.include?(entities(:one))
  end
  
  def test_remove_person_from_project
    Relationship.remove_person_from_project( entities(:one), entities(:two) )
    juxta = Project.find(entities(:two))
    assert_not_nil juxta
    assert !juxta.people.include?(entities(:one))
  end
  
  def test_remove_project_from_organization
    Relationship.remove_project_from_organization( entities(:two), entities(:arp) )
    arp = Project.find(entities(:arp))
    assert_not_nil arp
    assert !arp.projects.include?(entities(:two))
  end

  def test_add_project_to_organization
    assert Relationship.add_project_to_organization( entities(:two), entities(:arp) )    
  end
    
end
