class Transaction_log

  attr_reader :history

  def initialize
    @history = Hash.new()
    self.history[:deposits] = []
    self.history[:withdrawls] = []
  end

  def add_transaction(transaction)
    add_deposit(transaction) if transaction.is_a? Deposit
    add_withdrawl(transaction) if transaction.is_a? Withdrawl
  end

  private

  attr_writer :history

  def add_deposit(deposit)
    self.history[:deposits] << deposit
  end

  def add_withdrawl(withdrawl)
    self.history[:withdrawls] << deposit
  end

end
