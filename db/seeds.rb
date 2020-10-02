# Purchase.destroy_all
# Customer.destroy_all
Sundae.destroy_all

topping = [
    "sprinkles",
    "hot fudge",
    "cheesecake bites",
    "m&ms",
    "peanut butter cups",
    "boba",
    "mango",
    "caramel",
    "brownie chunks",
    "snickers",
    'chocolate chips',
    'bananas',
    "skittles"
]

ice_cream = [
    'vanilla',
    'chocolate',
    'pistachio',
    'caramel',
    'rainbow',
    'mint chocolate chip',
    'rocky road',
    'dark chocolate',
    'cake batter'
]


topping.each do |topping|
    Sundae.create(topping: topping)
end

ice_cream.each do |ice_cream|
    Sundae.create(ice_cream: ice_cream)
end

binding.pry