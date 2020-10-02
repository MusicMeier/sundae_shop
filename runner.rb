require_relative 'config/environment'
require 'pry'

cli = Cli.new

cli.start_app
cli.choose_a_sample
cli.order_ice_cream
cli.pick_toppings
cli.checkout_sundae
cli.create_purchase

