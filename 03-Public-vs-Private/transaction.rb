class Transaction
  def initialize(amount)
	# Initialize amount and date of transaction
	  @amount = amount
	  @date = Time.now
	  @reason = "no given"
  end
  
  def to_s
  # Nicely print transaction infos using Time#strftime.
	  if @amount >0 
	  	"you deposite #{@amount} euros on #{@date.strftime("%Y-%m-%d")}"
		else
			"you withdraw #{-@amount} euros on #{@date.strftime("%Y-%m-%d")}"
	  end
	end
end
