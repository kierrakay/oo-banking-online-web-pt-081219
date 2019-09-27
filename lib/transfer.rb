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
      if  !valid?  # this is saying to check if not valid do this else..other code
       @status = "rejected"
       "Transaction rejected. Please check your account balance."
        @sender.balance > @amount && @status == "pending"
      elsif
      
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
    end
  end
end
