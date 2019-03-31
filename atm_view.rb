class ATMView
    def welcome
        puts "Welcome to the Banking App."
    end

    def goodbye
        puts "Good bye! Program ends."
    end

    def error
        puts "INVALID INPUT!"
    end

    def show_menu
        puts "What would you like to do?"
        puts "| {D}eposit | {W}ithrawal | {S}how balance | {Q}uit |"
    end

    def show_balance(balance)
        puts "Your current balance is #{balance}."
    end

    def confirm_deposit(deposit_amount)
        puts "Received request to deposit #{deposit_amount}."
    end

    def confirm_withdrawal(withdrawal_amount)
        puts "Received request to withdraw #{withdrawal_amount}."
    end
end