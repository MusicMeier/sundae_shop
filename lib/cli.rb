class Cli 
    attr_accessor :user


    def initialize 
        @prompt = TTY::Prompt.new(symbols: {marker: '🍦'})
    end

    def clear
        system "clear"
    end

    def start_app
        system("clear")
        puts "Hello, welcome to the sundae parlor! May we have a name for the order?"
        customer = gets.chomp
        @user = Customer.create(name: customer)
        puts "Thank you!"
    end

    def show_ice_cream
        Sundae.all.each do ||
            
        end
    end

    def show_toppings
       puts Sundae.all.pluck(:topping)
    end

    def select_ice_cream
        @chosen_ice_cream = @prompt.select("Choose your sample flavor", show_ice_cream)
    end

    # def create_sundae
    #     @current_sundae = Sundae.create(toppings: @topping, ice_cream: @chosen_flavors)
    # end

    # def new_purchase
    #     Purchase.create(sundae: @current_sundae, customer_id: @user.id)
    # end
end


# Purchase.create(customer: @user, )