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
    if  @sender.valid? && @receiver.valid? && @sender.balance >= @amount
      true 
    else 
      false
    end
  end

  def execute_transaction 
      if  !valid?  # this is saying to check if not valid and do this else..other code
       @status = "rejected"
       return "Transaction rejected. Please check your account balance."
     
        elsif @status == "pending"
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
    end
  end
end


#  def valid?
  #  if  @sender.valid? && @receiver.valid? && @sender.balance >= @amount
  
#   def valid?
    if  @sender.valid? && @receiver.valid? && @sender.balance >= @amountis checking to see if 