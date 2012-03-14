# SixArm.com » Ruby » <br> PasswordAttribute module to add strong passwords to ActiveRecord

* Docs: <http://sixarm.com/sixarm_ruby_password_attribute/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_password_attribute>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Easy way to add BCrypt strong password capability to an ActiveRecord model.

This is typically useful to add to a Ruby On Rails ActiveRecord user model.

For docs go to <http://sixarm.com/sixarm_ruby_password_attribute/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_password_attribute

Bundler:

    gem "sixarm_ruby_password_attribute", "=1.6.0"

Require:

    require "sixarm_ruby_password_attribute"


## Examples


Include:

    require 'sixarm_ruby_password_attribute'
    class User
      include PasswordAttribute
    end

Create new user:

    user=User.new
    user.password='secret'  # automatically converts plain text to bcrypt
    user.save

Is a user's password valid?

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
