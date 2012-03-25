# SixArm.com » Ruby » <br> PasswordAttribute module to add strong passwords to ActiveRecord

* Doc: <http://sixarm.com/sixarm_ruby_password_attribute/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_password_attribute>
* Repo: <http://github.com/sixarm/sixarm_ruby_password_attribute>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Easy way to add BCrypt strong password capability to an ActiveRecord model.

This is typically useful to add to a Ruby On Rails ActiveRecord user model.

For docs go to <http://sixarm.com/sixarm_ruby_password_attribute/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_password_attribute

Bundler:

    gem "sixarm_ruby_password_attribute", "~>1.6.0"

Require:

    require "sixarm_ruby_password_attribute"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_password_attribute --test --trust-policy HighSecurity


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


## Changes

* 2011-04-25 1.6.0 Bump version to relax test gem
* 2011-04-19 1.5.8 Add password_before_type_cast
* 2011-04-19 1.5.6 Bump dependency on ActiveRecordMock
* 2011-04-19 1.5.4 Bump dependency on ActiveRecordMock
* 2011-04-18 1.5.2 Update to Ruby 1.9.2 and Rails 3.0.5


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
