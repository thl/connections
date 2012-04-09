require File.dirname(__FILE__) + '/../test_helper'

class ProjectTest < ActiveSupport::TestCase

  def test_invitees
    project = Project.new
    project.invite_list = "joe shmoe joem@hotmail.com\njane berry berry@foo.com"
    invitees = project.invitees
    assert_not_nil invitees
    assert_equal 2, invitees.size
    jane = invitees[1]
    assert_equal "jane", jane[:first_name]
    assert_equal "berry", jane[:last_name]
    assert_equal "berry@foo.com", jane[:email]
  end
  
end
