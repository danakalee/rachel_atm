class ATMModel
    def deposit_balance(balance, deposit_amount)
        balance += deposit_amount
        return balance
    end

    def withdraw_balance(balance, withdraw_amount)
            balance = balance - withdraw_amount # proceed with withdrawal request
            return balance
    end
end
