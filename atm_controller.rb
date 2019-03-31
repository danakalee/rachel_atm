require_relative 'atm_view'
require_relative 'GetInput'
require_relative 'atm_model'

class ATMController
    def initialize
        @screen = ATMView.new
        @get = GetInput.new
        @model = ATMModel.new
    end

    def run
        @screen.welcome # Display welcome screen
        gets.chomp # wait for user to hit enter
        @screen.show_menu # Display menu choices
        choice = @get.get_menu_choice # Ask view to get user input for menu option
        balance = 100 # Initialise balance with base of 100 

        while choice != "q"
            case choice
                when "d"
                    # Send program along to Deposit method
                    option_chosen = "deposit"
                    deposit_amount = @get.get_amount(option_chosen) # Ask view to get user input 
                    balance = @model.deposit_balance(balance, deposit_amount) # Ask model to calculate deposit
                    @screen.show_balance(balance) # Display newly updatd balance
                when "w"
                    # Send program along to Withdrawal method
                    option_chosen = "withdraw"
                    withdrawal_amount = @get.get_amount(option_chosen) # Ask view to get user input 
                    balance = @model.withdraw_balance(balance, withdrawal_amount) # Ask model to calculate withdraw
                    @screen.show_balance(balance) # Display newly updatd balance
                when "s"
                    # Send program along to Show Balance method
                    @screen.show_balance(balance) # Display newly updatd balance
                else
                    @screen.error
            end
            @screen.show_menu # Display menu choices
        end
        # exit screen
        @screen.goodbye
    end
end