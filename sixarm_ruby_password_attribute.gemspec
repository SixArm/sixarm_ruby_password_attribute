Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_password_attribute"
  s.summary           = "SixArm Ruby Gem: PasswordAttribute model to provides read/write for an ActiveRecord password attribute based on bcrypt"
  s.version           = "1.2.0"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_password_attribute.rb']
  s.test_files        = ['test/sixarm_ruby_password_attribute_test.rb']

  s.add_dependency('bcrypt-ruby', '>= 2.0.3')
  s.add_dependency('sixarm_ruby_active_record_mock', '>= 1.2.8')  # exclusively for test

end
