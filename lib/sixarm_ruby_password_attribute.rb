=begin rdoc

= SixArm Ruby Gem: PasswordAttribute module

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Easy way to add BCrypt strong password capability to an ActiveRecord model.

Example:
  require 'ruby_password_attribute'
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
