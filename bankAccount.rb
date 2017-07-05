class BankAccount
    @@count = 0
    attr_accessor :savingsBalance, :checkingBalance, :accountNumber 
    def initialize(checkingBalance, savingsBalance)
        @checkingBalance = checkingBalance
        @savingsBalance = savingsBalance
        @accountNumber = create_account
        @interestRate = 0.01
        @@count += 1
    end         
    def view_checkingBalance
        puts @checkingBalance
    end
    def view_savingsBalance
        puts @savingsBalance
    end
    def view_total
        puts @savingsBalance + @checkingBalance
    end  
    def account_info
        puts "Account number is #{ @accountNumber }"
        puts "Total balance is #{ @savingsBalance + @checkingBalance }"
        puts "Checking account balance is #{ @checkingBalance }"
        puts "Savings account balance is #{ @savingsBalance }"
        puts "Interest rate is #{ @interestRate }"
    end  
    def deposit(num)
        puts "Please select the account you would to deposit to 1)checking 2)savings"
        option = gets.chomp
        if option == "1"
            @checkingBalance += num
            puts "New balance is #{ @checkingBalance }"
        elsif option = "2"   
            @savingsBalance += num 
            puts "New balance is #{ @savingsBalance }"
        end     
    end 
    def withdraw(num)
        puts "Please select the account you would to withdraw from 1)checking 2)savings" 
        option = gets.chomp
        if option == "1"
            if @checkingBalance > num
                @checkingBalance -= num
                puts "New balance is #{ @checkingBalance }"     
            else 
                puts "Insufficient funds"
            end
        elsif option == "2"
            if @savingsBalance > num
                @savingsBalance -= num
                puts "New balance is #{ @savingsBalance }"     
            else 
                puts "Insufficient funds"
            end 
        end 
    end
    def countAccounts 
        puts @@count
    end
    private
        def create_account
            Array.new(10).map { rand(1..9) }.join
        end                                     
end  

a = BankAccount.new(1000,500)
a.view_total
a.account_info
a.withdraw(600)
a.countAccounts