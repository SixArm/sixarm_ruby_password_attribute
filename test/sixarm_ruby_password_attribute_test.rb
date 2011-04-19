# -*- coding: utf-8 -*-
require 'test/unit'
require 'sixarm_ruby_password_attribute'
require 'sixarm_ruby_active_record_mock'
require 'simplecov'
SimpleCov.start

class User < ActiveRecordMock
  include PasswordAttribute
end

class Testing < Test::Unit::TestCase

  def test_get_and_set
    user=User.new
    user.password='hello'
    assert_not_nil(user.password,"user.password")
    assert(user.password=='hello',"user.password=='hello'")
  end

  def test_encrypts_different_plaintext_to_different_crypttext
    user1 = User.new
    user2 = User.new
    user1.password='hello'
    user2.password='world'
    assert_not_nil(user1.password,"user1.password")
    assert_not_nil(user2.password,"user2.password") 
    assert_not_same(user1.password,user2.password,"user1.password,user2.pasword")
    assert_not_equal(user1.password.to_s,user2.password.to_s,"user1.password.to_s,user2.pasword.to_s")
  end
  
  def test_gets_consistent_password_multiple_times
    user = User.new
    user.password='hello'
    x=user.password 
    y=user.password
    assert_not_nil(x,"user.password x")
    assert_not_nil(y,"user.password y")
    x=x.to_s
    y=y.to_s
    assert_not_nil(x,"user.password x to_s")
    assert_not_nil(y,"user.password y to_s")
    assert_equal(x,y,"user.password x to_s, user.password y to_s")
  end

end




