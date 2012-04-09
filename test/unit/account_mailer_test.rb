require File.dirname(__FILE__) + '/../test_helper'

class AccountMailerTest < ActionMailer::TestCase
  tests AccountMailer
  # def test_request_full
  #    @expected.subject = 'AccountMailer#request_full'
  #    @expected.body    = read_fixture('request_full')
  #    @expected.date    = Time.now
  # 
  #    assert_equal @expected.encoded, AccountMailer.create_request_full(@expected.date).encoded
  #  end
  # 
  #  def test_access_granted
  #    @expected.subject = 'AccountMailer#access_granted'
  #    @expected.body    = read_fixture('access_granted')
  #    @expected.date    = Time.now
  # 
  #    assert_equal @expected.encoded, AccountMailer.create_access_granted(@expected.date).encoded
  #  end
  # 
  #  def test_invite_user
  #    @expected.subject = 'AccountMailer#invite_user'
  #    @expected.body    = read_fixture('invite_user')
  #    @expected.date    = Time.now
  # 
  #    assert_equal @expected.encoded, AccountMailer.create_invite_user(@expected.date).encoded
  #  end
  # 
  #  def test_forgot_password
  #    @expected.subject = 'AccountMailer#forgot_password'
  #    @expected.body    = read_fixture('forgot_password')
  #    @expected.date    = Time.now
  # 
  #    assert_equal @expected.encoded, AccountMailer.create_forgot_password(@expected.date).encoded
  #  end
 
end
