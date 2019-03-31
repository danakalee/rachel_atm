class ATMModel
    def deposit_balance(balance, deposit_amount)
        balance = balance + deposit_amount
        return balance
    end

    def withdraw_balance(balance, withdraw_amount)
        if balance >= withdraw_amount # if balance is greater than or equal to the withdrawal amount
            balance = balance - withdraw_amount # proceed with withdrawal request
            return balance # return udpated balance to controller
        else
            return balance # return the balance unchanged
        # else, strictly speaking view should output an overdrawn error screen  
        end
    end
end
