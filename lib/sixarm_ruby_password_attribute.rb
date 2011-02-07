# -*- coding: utf-8 -*-
=begin rdoc

= SixArm.com » Ruby » PasswordAttribute module to add strong passwords to ActiveRecord

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file

PasswordAttribute is an easy way to add BCrypt strong password capability.

This is typically useful to add to a Ruby On Rails ActiveRecord user model.

Example:
  require 'sixarm_ruby_password_attribute'
  class User
    include PasswordAttribute
  end

Example: create new user
  u=User.new
  u.password='secret'  # automatically converts plain text to bcrypt
  u.save

Example: is a user's password valid?
  u = User.find(id) or raise 'user not found'
  u.password=='secret'  # automatically converts plain text to bcrypt
    ... password is valid ...
  else
    ... password doesn't match ...
  end

Example: mock testing in irb

  require 'rubygems'
  => true

  require 'ruby_active_record_mock'
  => true

  require 'bcrypt'
  => true

  require 'ruby_password_attribute'
  => true

  class UserMock < ActiveRecordMock
    include PasswordAttribute
  end
  => UserMock

  u = UserMock.new
  => #<UserMock:0xb7b9c924 @attributes={}>

  u.password='secret'
  => "secret"

  u.password=='secret'
  => true

  u.password == 'wrong'
  => false

=end


require 'bcrypt'

module PasswordAttribute

  # Read the :password attribute as a new BCrypt::Password
  def password
    BCrypt::Password.new(read_attribute(:password))
  end

  # Write the :password attribute as a new BCrypt::Password
  def password=(plain_text)
    write_attribute(:password,BCrypt::Password.create(plain_text))
  end

end
