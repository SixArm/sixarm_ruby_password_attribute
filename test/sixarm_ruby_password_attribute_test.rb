# -*- coding: utf-8 -*-
require 'test/unit'
require 'sixarm_ruby_active_record_mock'
require 'sixarm_ruby_password_attribute'

class Testing < Test::Unit::TestCase

 # Ensure that we can set a password, get a password,
 # and that diffent passwords cause different results.

 def test_password_equal
  user1 = User.new
  user2 = User.new
  assert_not_nil(user1,"user1")
  assert_not_nil(user1,"user2")
  user1.password='hello'
  user2.password='world'
  assert_not_nil(user1.password,"user1.password")
  assert_not_nil(user2.password,"user2.password") 
  assert_not_same(user1.password,user2.password,"user1.password,user2.pasword")
  assert_not_equal(user1.password.to_s,user2.password.to_s,"user1.password.to_s,user2.pasword.to_s")
 end


 # Ensure that when we get a password more than once,
 # the passwords are equal and non-nil.

 def test_password_redux
  user = User.new
  assert_not_nil(user,"user")
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

class User < ActiveRecordMock
 include PasswordAttribute
end


