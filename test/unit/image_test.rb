require File.dirname(__FILE__) + '/../test_helper'

class ImageTest < ActiveSupport::TestCase

  def test_placeholder_person
    person_image = Image.find(Image::PERSON_PLACEHOLDER)
    assert_not_nil person_image
    assert_equal "person_placeholder.jpg", person_image.filename
  end

  def test_placeholder_project
    person_image = Image.find(Image::PROJECT_PLACEHOLDER)
    assert_not_nil person_image
    assert_equal "project_placeholder.jpg", person_image.filename
  end

end
