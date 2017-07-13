require_relative 'bankaccount'
RSpec.describe BankAccount do
     before(:each) do
        @a = BankAccount.new(1000,500)
    end    
    it 'has a getter for checking account balance' do
        expect(@a.checkingBalance=1000)
    end     
    it 'has a method that gets the total account balance' do
        @a.view_total
        expect('1500')
    end 
    it 'has a function that allows a user to withdraw cash' do
        @a.withdraw(300)
        if gets.chomp == 1
            expect(@a.checkingBalance=700)
        elsif gets.chomp == 2
            expect(@a.savingsBalance=200)
        end
    end 
    it 'raises an error if the user tries to withdraw too much cash' do
        @a.withdraw(700)
        if gets.chomp == 1
            expect(@a.checkingBalance=300)
        elsif gets.chomp == 2
            expect("Insufficient funds")
        end
    end   
    it 'raises an error when the user tries to set the interest rate' do
        expect{@a.interestRate = 0.02}.to raise_error(NoMethodError)
    end              
end    