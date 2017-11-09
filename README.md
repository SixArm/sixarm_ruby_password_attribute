# SixArm.com » Ruby » PasswordAttribute module to add strong passwords to ActiveRecord

<!--header-open-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_password_attribute.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_password_attribute)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_password_attribute.png)](https://travis-ci.org/SixArm/sixarm_ruby_password_attribute)

* Git: <https://github.com/sixarm/sixarm_ruby_password_attribute>
* Doc: <http://sixarm.com/sixarm_ruby_password_attribute/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_password_attribute>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--header-shut-->

## Introduction

Easy way to add BCrypt strong password capability to an ActiveRecord model.

This is typically useful to add to a Ruby On Rails ActiveRecord user model.

For docs go to <http://sixarm.com/sixarm_ruby_password_attribute/doc>

Want to help? We're happy to get pull requests.

<!--install-opent-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_password_attribute", ">= 1.6.1", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_password_attribute -v ">= 1.6.1, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_password_attribute -v ">= 1.6.1, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_password_attribute"

<!--install-shut-->

<!--install-shut-->

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
