# -*- coding: utf-8 -*-

=begin rdoc

= SixArm Ruby Gem: PasswordAttribute module to add BCrypt to an ActiveRecord model

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file  

Easy way to add BCrypt strong password capability to an ActiveRecord model.

Example:
  require 'sixarm_ruby_password_attribute'
  class User
    include PasswordAttribute
  end

Example: create new user
  user=User.new
  user.password='secret'  # automatically converts plain text to bcrypt
  user.save

Example: is a user's password valid?
  if user.password=='secret' 
    # password is valid
  else
    # password is invalid
  end

  u.password='secret'
  => user's password is now secret

  u.password=='secret'
  => true

  u.password=='xxx'
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


