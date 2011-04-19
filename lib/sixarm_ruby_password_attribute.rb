# -*- coding: utf-8 -*-
=begin rdoc
Please see README.doc
=end

require 'bcrypt'

module PasswordAttribute

  # Read the :password attribute as a new BCrypt::Password.
  # Return the BCrypt::Password.

  def password
    BCrypt::Password.new(read_attribute(:password))
  end

  # Write the :password attribute as a new BCrypt::Password.

  def password=(plain_text)
    write_attribute(:password,BCrypt::Password.create(plain_text))
  end

end


