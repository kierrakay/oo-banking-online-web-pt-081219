require 'pry'
class Transfer

attr_accessor :sender, :amount, :receiver, :status 

  def initialize(sender, receiver, amount)
     @sender = sender 
     @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if  @sender.valid? && @receiver.valid? 
      true 
    else 
      false
    end
  end

  def execute_transaction 
      if  !valid?  # this is saying to check if not valid and do this else..other code
         binding.pry
       @status = "rejected"
       return "Transaction rejected. Please check your account balance."
     
        elsif (@sender.balance >= @amount && @status == "pending")
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
    end
  end
end
