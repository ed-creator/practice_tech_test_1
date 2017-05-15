class Withdrawl

  attr_reader :date, :amount, :balance, :count

  def initialize(amount)
    @date = Time.now.strftime("%d/%m/%Y")
    raise "amount must be positive" if amount <= 0
    @amount = amount
  end

  def set_balance(balance)
    @balance = balance
  end

  def add_count(count)
    @count = count
  end


end
