ENV["RACK_ENV"] ||= "development"

require 'bundler'
require 'erb'
require 'sass'
require 'active_record'
require 'sinatra/base'
require 'sinatra/contrib/all'

Bundler.setup
Bundler.require(:default, ENV["RACK_ENV"].to_sym)

# Database
dbconfig = YAML.load(File.read('./config/database.yml'))
ActiveRecord::Base.establish_connection dbconfig["#{settings.environment}"]

Dir["./app/**/*.rb"].each { |f| require f }