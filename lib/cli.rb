class Cli
    attr_accessor :user, :prompt

    def initialize
        @prompt = TTY::Prompt.new(symbols: {marker: "🍦"})
    end

    def clear
        system("clear")
    end

    def start_app
        clear
        puts "Hello, welcome to the sundae parlor! May we have a name for the order?"
            customer = gets.chomp
            @user = Customer.create(name: customer)
            puts "Thank you!"
        end
    

    def flavors
        Sundae.all.pluck(:ice_cream).compact
    end
    

    def toppings
        Sundae.all.pluck(:topping).compact
    end
   

    def select_sample_flavor
        @chosen_sample_flavor = @prompt.select("Choose your sample flavor", flavors)
    end

    def choose_a_sample
        puts "Would you like a sample today, #{@user['name']}? Enter: Y/N"
        answer = gets.chomp
        if answer == "Y"
            clear
            select_sample_flavor 
            puts "Here is your sample of #{@chosen_sample_flavor}. Are you ready to order? Y/N"  
            answer = gets.chomp
        unless answer == "N"
            puts "Please go to the counter"
        else 
            choose_a_sample
            end
        end
    end

    def order_ice_cream
        @chosen_flavors = @prompt.multi_select("Choose your ice cream flavors", flavors)
    
    end
        
    def pick_toppings
        @chosen_toppings = @prompt.multi_select("Now, choose your toppings", toppings)
    end
    
    def checkout_sundae
        puts "Thanks for your order #{@user['name']}!"
        puts "So for your ice cream flavors, we have: #{@chosen_flavors.join(", ")}"
        puts "For your toppings, we have: #{@chosen_toppings.join(", ")}"
        puts "Is that correct? Y/N"
            answer = gets.chomp
                if answer == "Y"
                    puts "Enjoy your sundae!"
                    answer = gets.chomp
                else
                    clear
                    puts "Our bad! We will remake your sundae!  Please go back to the ice cream counter."
                order_ice_cream
                pick_toppings
                create_sundae
        end
    end

    # def create_customer
    #     Customer.create(name: @user)
    # end

    # def get_customer_id
    #     @customer_id = Customer.find_by(@user['name']).id
    # end

    def create_sundae
       @current_sundae = Sundae.create(ice_cream: @chosen_flavors, topping: @chosen_toppings)
    end

    # def create_sundae_id
    #     @current_sundae_id = Sundae.create(ice_cream: @chosen_flavors, topping: @chosen_toppings).id
    #  end

    def create_purchase
        Purchase.create(sundae_id: @current_sundae.id, customer_id: @user.id) 
    end
end
