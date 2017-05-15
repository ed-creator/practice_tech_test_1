class Deposit

  attr_reader :date, :amount

  def initialize(amount)
    @date = Time.now.strftime("%d/%m/%Y")
    raise "amount must be positive" if amount <= 0
    @amount = amount
  end



end
