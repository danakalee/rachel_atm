class ATMModel
    def deposit_balance(balance, deposit_amount)
        balance += deposit_amount
        return balance
    end

    def withdraw_balance(balance, withdraw_amount)
        if withdraw_amount < balance
            balance = balance - withdraw_amount
            return balance
        end
    end
end
