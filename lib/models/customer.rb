class Customer < ActiveRecord::Base
    has_many :purchases
    has_many :sundaes, through: :purchases
end