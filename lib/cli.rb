class Cli 
    attr_accessor :user


    def initialize user=nil
        @user = user
    end

    def start_app
        puts "Welcome to our sundae shop! Can I have a name for your order?"
        name = gets.chomp
        self.user = name
    end


    def initialize user=nil
        @user = user
    end

    def start_app
        puts "Welcome to our sundae shop! Can I have a name for your order?"
        name = gets.chomp
        self.user = name
    end





end
