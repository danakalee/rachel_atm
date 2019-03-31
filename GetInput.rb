require_relative 'atm_view'

class GetInput
    def initialize
        @screen = ATMView.new
    end

    def get_amount(option_chosen)
        # Displays How much would you like to deposit/withdraw based on user input
        puts "How much would you like to #{option_chosen}?"
        amount = gets.strip.to_i # get user's chosen amount
        if check_value?(amount)
            return amount # return user's chosen amount to Controller
        else
            #error screen for negative values
            @screen.error
        end
        @screen.goodbye
    end

    def get_menu_choice
        menu_choice = gets.chomp.strip.downcase
        allowed_choices = ["d", "w", "s", "q"]
        # if any of the user input is within the array of allowed choices (d, w, s, q)
        if allowed_choices.include?(menu_choice)
            return menu_choice # return it to Controller
        else
            @screen.error # otherwise, display an error message
        end
    end

    # a question mark after a method name will cause the method to return a boolean value
    def check_value?(amount)
        if amount > 0 # If amount is greater than 0 (or it is positive)
            return true
        end
    end
end