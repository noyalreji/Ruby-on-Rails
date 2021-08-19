class BankAccount
    attr_reader :account_number, :checking_balance, :saving_balance
    @@number_of_accounts = 0
    def initialize
        @account_number = generate_account_number
        @checking_balance = 0
        @saving_balance = 0
        @interest_rate = 0.01
        @@number_of_accounts += 1
    end
    def account_number
        @account_number
    end
    def checking_balance
        @checking_balance
    end
    def saving_balance
        @saving_balance
    end
    def deposit(account, amount)
        if account == "checking_balance"
            @checking_balance += amount
            self
        elsif account == "saving_balance"
            @saving_balance += amount
            self
        else
            "Account doesn't exist. Please try again."
        end
    end
    def withdraw(account, amount)
        if account == "checking_balance"
            if @checking_balance >= amount
                @checking_balance -= amount
                "Withdraw ₱#{amount}, New checking account balance: ₱#{@checking_balance}"
            else
                raise "Insufficient funds, Current checking account balance: ₱#{@checking_balance}"
            end
        elsif account == "saving_balance"
            if @saving_balance >= amount
                @saving_balance -= amount
                "Withdraw ₱#{amount}, New saving account balance: ₱#{@saving_balance}"
            else
                raise "Insufficient funds, Current saving account balance: ₱#{@saving_balance}"
            end
        else
            raise "Account doesn't exist. Please try again."
        end
    end
    def total
        "Saving Balance: #{@checking_balance}\nChecking Balance: #{@saving_balance}\nTotal Balance: #{@saving_balance + @checking_balance}"
    end
    def account_information
        "Number of Accounts: #{@@number_of_accounts}\nYour account number: #{@account_number}\nYour total money: ₱#{@saving_balance + @checking_balance}\nYour checking account balance: ₱#{@checking_balance}\nYour saving account balance: ₱#{@saving_balance}\nYour interest rate: #{@interest_rate}%"
    end
    private
        def generate_account_number
            acc_number = rand(11111111111..99999999999)
        end
end