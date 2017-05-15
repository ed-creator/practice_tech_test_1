class Statement

  attr_reader :transaction_log, :deposits, :withdrawls, :transaction_log_array
  attr_writer :deposits, :withdrawls

  def initialize(transaction_log)
    @transaction_log = transaction_log
    @transaction_log_array = (transaction_log[:deposits] + transaction_log[:withdrawls]).sort_by! {|i| i.count}
  end

  def display_log
    build_log_header
    transaction_log_array.each do |transaction|
      if transaction.is_a? Deposit
        puts "#{transaction.date} || #{'%.2f' % transaction.amount} || || #{'%.2f' % transaction.balance}"
      elsif transaction.is_a? Withdrawl
        puts "#{transaction.date} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}"
      end
    end
  end

  private


  def build_log_header
    puts "date || credit || debit || balance"
  end

end

# puts "#{transaction.date} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}"
