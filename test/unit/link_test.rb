require File.dirname(__FILE__) + '/../test_helper'

class LinkTest < ActiveSupport::TestCase
  def test_clean_link
    url = Link.clean_link("foo.com")
    assert url.starts_with?("http://")
  end
end
