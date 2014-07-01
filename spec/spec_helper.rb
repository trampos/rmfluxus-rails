require 'bundler/setup'
Bundler.setup

RSpec.configure do |config|
  # some (optional) config here
end

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'rmfluxus_rails' # and any other gems you need

Rails.backtrace_cleaner.remove_silencers!