Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_password_attribute"
  s.summary           = "SixArm.com » Ruby » PasswordAttribute model to provides read/write for an ActiveRecord password attribute based on bcrypt"
  s.version           = "1.5.0"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  top_files           = [".gemtest","Rakefile","README.rdoc","INSTALL.txt","LICENSE.txt"]
  lib_files           = ["lib/#{s.name}.rb"]
  test_files          = ["test/#{s.name}_test.rb"]

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files

  s.add_dependency('bcrypt-ruby', '>= 2.0.3')
  s.add_dependency('sixarm_ruby_active_record_mock', '>= 1.2.6') # for test

end
