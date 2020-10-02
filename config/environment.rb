require 'bundler/setup'
Bundler.require

require "pry"
require 'tty-prompt'

ActiveRecord::Base.logger = nil

require_all 'lib'