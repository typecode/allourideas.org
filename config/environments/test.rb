# Settings specified here will take precedence over those in config/environment.rb

# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!
config.cache_classes = true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

# Tell ActionMailer not to deliver emails to the real world.
# The :test delivery method accumulates sent emails in the
# ActionMailer::Base.deliveries array.
config.action_mailer.delivery_method = :test

# rake gems:install RAILS_ENV=test

config.gem 'thoughtbot-factory_girl', 
  :lib     => 'factory_girl',
  :source  => 'http://gems.github.com',
  :version => '>= 1.2.1'
config.gem 'thoughtbot-shoulda',
  :lib     => 'shoulda',
  :source  => 'http://gems.github.com',
  :version => '>= 2.10.1'
config.gem 'jtrupiano-timecop',
  :lib     => 'timecop',
  :source  => 'http://gems.github.com',
  :version => '0.2.1'
config.gem 'fakeweb',
  :version => '>= 1.2.5'
config.gem 'jferris-mocha',
  :version => '0.9.5.0.1241126838',
  :source  => 'http://gems.github.com',
  :lib     => 'mocha'

HOST = 'localhost'
API_HOST = "http://localhost:4000" 

PAIRWISE_USERNAME = "testing@dkapadia.com"
PAIRWISE_PASSWORD = "wheatthins"

begin
  require 'factory_girl'
  require 'redgreen'
  require 'fakeweb'
rescue LoadError
end


  config.gem 'rspec-rails', :version => '>= 1.3.2', :lib => false unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec-rails'))
