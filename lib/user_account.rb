class User

  attr_reader :balance

  def initialize
    @balance = 0
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

  attr_writer :balance

  def process_deposit(amount)
    deposit = Deposit.new(amount, balance)
    self.balance += deposit.amount
  end

  def process_withdrawl(amount)
    withdrawl = Withdrawl.new(amount, balance)
    self.balance -= withdrawl.amount
  end

end
