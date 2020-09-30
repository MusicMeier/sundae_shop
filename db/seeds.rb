Purchase.destroy_all
Customer.destroy_all
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

chocolate_madness = Sundae.create(name: 'Chocolate madness', icre_cream: ['chocolate', 'rocky road', 'chocolate'], topping: ['m&ms', 'brownie chunks', 'snickers', 'chocolate chips', 'fudge'] )
dulce_de_leche = Sundae.create(name: 'Dulce de leche', ice_cream: ['vanilla', 'caramel', 'vanilla'], topping: ['caramel', 'bananas'])
unicorn_madness = Sundae.create(name: 'Unicorn madness'ice_cream: ['vanilla', 'rainbow', 'strawberry'], topping: ['sprinkles', 'mangos', 'skittles'])
pistachio_king = Sundae.create(name: 'Pistachio king', ice_cream: ['pistachio', 'vanilla', 'pistachio'], topping: ['sprinkles', 'bananas'])
cake_or_cake = Sundae.create(name: 'Cake or cake', ice_cream: ['cake batter', 'vanilla', 'cake batter'], topping: ['cheesecake bites', 'caramel', 'brownie chunks', 'bananas'])

# sundae1 = Sundae.create(ice_cream: ['vanilla', 'chocolate'], topping: ['sprinkles', 'hot fudge', 'rainbow'])

# user_input = Purchase.create(sundae_id: sundae1.id)