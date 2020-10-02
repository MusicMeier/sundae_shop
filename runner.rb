require_relative 'config/environment'
require 'pry'

cli = Cli.new
cli.start_app
cli.show_ice_cream