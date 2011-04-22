PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
require 'capybara'
require 'capybara/rspec'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  Padrino.application
end

Capybara.app = app

def log_with(options)
  visit '/admin'
  within(".login") do
    fill_in 'email', :with => options[:email]
    fill_in 'password', :with => options[:password]
  end
  click_on 'Sign In'
end
