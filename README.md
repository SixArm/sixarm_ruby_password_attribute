# SixArm.com » Ruby » PasswordAttribute module to add strong passwords to ActiveRecord

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_password_attribute.svg)](http://badge.fury.io/rb/sixarm_ruby_password_attribute)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_password_attribute.png)](https://travis-ci.org/SixArm/sixarm_ruby_password_attribute)
[![Code Climate](https://api.codeclimate.com/v1/badges/7150ab3f6beea07263bc/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_password_attribute/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_password_attribute>
* Doc: <http://sixarm.com/sixarm_ruby_password_attribute/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_password_attribute>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Easy way to add BCrypt strong password capability to an ActiveRecord model.

This is typically useful to add to a Ruby On Rails ActiveRecord user model.

For docs go to <http://sixarm.com/sixarm_ruby_password_attribute/doc>

Want to help? We're happy to get pull requests.

<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_password_attribute

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_password_attribute'

### Require

To require the gem in your code:

    require 'sixarm_ruby_password_attribute'

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
