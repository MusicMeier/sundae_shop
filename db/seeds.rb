Purchase.destroy_all
Customer.destroy_all
Sundae.destroy_all


Sundae.create(toppings: 
    [
            'sprinkles',
            'hot fudge',
            'strawberry syrup',
            'chocolate syrup',
            'cheesecake bites',
            'm&ms',
            'peanut butter cups',
            'boba',
            'mango',
            'caramel',
            'brownie chunks',
            'oreo brownie',
            'snickers',
            'chocolate chips',
            'bananas',
            'skittles',
            'vanilla wafers',
            'mashwallow',
            'whipcream'
        ],
        ice_cream_flavors: [
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
        )
        
        toppings.each do |topping|
            Sundae.create(topping: topping)
        end
        
        ice_cream.each do |ice_cream|
            Sundae.create(ice_cream: ice_cream)
        end
        
        # chocolate_madness = Sundae.create(name: 'Chocolate madness', ice_cream: ['chocolate', 'rocky road', 'chocolate'], topping: ['m&ms', 'brownie chunks', 'snickers', 'chocolate chips', 'fudge'] )
        # dulce_de_leche = Sundae.create(name: 'Dulce de leche', ice_cream: ['vanilla', 'caramel', 'vanilla'], topping: ['caramel', 'bananas'])
        # unicorn_madness = Sundae.create(name: 'Unicorn madness', ice_cream: ['vanilla', 'rainbow', 'strawberry'], topping: ['sprinkles', 'mangos', 'skittles'])
        # pistachio_king = Sundae.create(name: 'Pistachio king', ice_cream: ['pistachio', 'vanilla', 'pistachio'], topping: ['sprinkles', 'bananas'])
        # cake_or_cake = Sundae.create(name: 'Cake or cake', ice_cream: ['cake batter', 'vanilla', 'cake batter'], topping: ['cheesecake bites', 'caramel', 'brownie chunks', 'bananas'])
        
        # Sundae.create(ice_cream: @whater, toppings: @jdjdje, customer_id: @Customer.id)
        # sundae1 = Sundae.create(ice_cream: ['vanilla', 'chocolate'], topping: ['sprinkles', 'hot fudge', 'rainbow'])
        
        # user_input = Purchase.create(sundae_id: sundae1.id)
        # toppings = [
        #     'sprinkles',
        #     'hot fudge',
        #     'chocolate syrup',
        #     'cheesecake bites',
        #     'm&ms',
        #     'peanut butter cups',
        #     'boba',
        #     'mango',
        #     'caramel',
        #     'brownie chunks',
        #     'oreo brownie',
        #     'snickers',
        #     'chocolate chips',
        #     'bananas',
        #     'skittles',
        #     'vanilla wafers',
        #     'mashwallow',
        #     'whipcream'
        #     ]
        # ice_cream_flavors = [
        #     'vanilla',
        #     'chocolate',
        #     'pistachio',
        #     'caramel',
        #     'rainbow',
        #     'mint chocolate chip',
        #     'rocky road',
        #     'dark chocolate',
        #    'cake batter'
        #     ]
        
        # toppings.each do |topping|
        #     binding.pry
        #     Sundae.create(topping: topping)
        # end
        
        # ice_cream.each do |ice_cream|
        #     Sundae.create(ice_cream: ice_cream)
        # end
        binding.pry
0