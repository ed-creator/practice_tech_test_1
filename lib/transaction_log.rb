class Transaction_log

  attr_reader :history, :count

  def initialize
    @history = Hash.new()
    self.history[:deposits] = []
    self.history[:withdrawls] = []
    @count = 1
  end

  def add_transaction(transaction)
    add_deposit(transaction) if transaction.is_a? Deposit
    add_withdrawl(transaction) if transaction.is_a? Withdrawl
    add_transaction_count(transaction)
  end

  private

  attr_writer :history, :count

  def add_deposit(deposit)
    self.history[:deposits] << deposit
  end

  def add_withdrawl(withdrawl)
    self.history[:withdrawls] << withdrawl
  end

  def add_transaction_count(transaction)
    transaction.add_count(count)
    # require 'pry'; binding.pry
    self.count += 1
  end

end
