class Deposit

  attr_reader :date, :amount, :balance

  def initialize(amount, balance)
    @date = Time.now.strftime("%d/%m/%Y")
    raise "amount must be positive" if amount <= 0
    @amount = amount
    @balance = balance
  end



end
