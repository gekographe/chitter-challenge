require 'coveralls'
require 'simplecov'
require 'capybara/rspec'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!

require File.join(File.dirname(__FILE__), '..', './app/app.rb')
Capybara.app = Chitter
