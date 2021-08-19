require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        @account1 = BankAccount.new
        @account2 = BankAccount.new
        @account1.deposit('saving_balance', 500)
        @account1.deposit('checking_balance', 500)
        @account2.deposit('saving_balance', 1000)
        @account2.deposit('checking_balance', 1000)
    end
    it 'has a getter for checking attribute' do
        expect(@account1.checking_balance).to be >= 0
    end
    it 'has a getter to retrieve total account balance' do
        expect(@account1.total).to eq("Saving Balance: 500\nChecking Balance: 500\nTotal Balance: 1000")
        expect(@account2.total).to eq("Saving Balance: 1000\nChecking Balance: 1000\nTotal Balance: 2000")
    end
    describe 'withdraw money' do
        it 'has a withdraw method for withdrawing money from bank account' do
            expect(@account1.withdraw('saving_balance', 100)).to eq("Withdraw ₱100, New saving account balance: ₱400")
            expect(@account2.withdraw('checking_balance', 400)).to eq("Withdraw ₱400, New checking account balance: ₱600")
        end
        it 'has not enough money to withdraw money from bank account' do
            expect{@account1.withdraw('saving_balance', 600)}.to raise_error(RuntimeError)
            expect{@account2.withdraw('checking_balance', 1500)}.to raise_error(RuntimeError)
        end
    end
    describe "number of bank accounts" do
        it 'retrieving the total number of bank accounts' do
            expect{@account1.bank_account}.to raise_error(NoMethodError)
        end
        it 'setting an interest rate for bank account' do
            expect{@account1.interest_rate}.to raise_error(NoMethodError)
        end
    end
end