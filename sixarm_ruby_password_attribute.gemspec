# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_password_attribute"
  s.summary           = "SixArm.com → Ruby → PasswordAttribute model"
  s.description       = "PasswordAttribute model provides read/write for an ActiveRecord password attribute based on bcrypt"
  s.version           = "1.6.1"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"


  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_password_attribute.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_password_attribute_test.rb",
  ]

  s.add_dependency('bcrypt-ruby', '>= 3.1.5', '< 4')
  s.add_dependency('sixarm_ruby_active_record_mock', '>= 1.4.4', '< 2') # test

  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency('sixarm_ruby_minitest_extensions', '>= 1.0.8', '< 2')
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")

  s.required_ruby_version = ">= 2.2"

end
