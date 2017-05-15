class User

  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_count = 0
    @transaction_history = Transaction_log.new
  end

  def check_balance
    return balance
  end

  def make_deposit(amount)

    process_deposit(amount)
  end

  def make_withdrawl(amount)
    raise "withdrawl is over balance" if amount > balance
    process_withdrawl(amount)
  end

  # use Statement.new(transaction_log) as params here
  def print_statement(statement)
    statement.display_log
  end

  private

  attr_writer :balance, :transaction_history

  def process_deposit(amount)
    deposit = Deposit.new(amount)
    self.balance += deposit.amount
    deposit.set_balance(balance)
    self.transaction_history.add_transaction(deposit)
  end

  def process_withdrawl(amount)
    withdrawl = Withdrawl.new(amount)
    self.balance -= withdrawl.amount
    withdrawl.set_balance(balance)
    self.transaction_history.add_transaction(withdrawl)
  end

end
