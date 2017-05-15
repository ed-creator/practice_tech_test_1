class Statement

  attr_reader :transaction_log

  def initialize(transaction_log)
    @transaction_log = transaction_log
  end

  def display_log
    build_log_header
    transaction_log.each do |key, transaction|
      if key == :deposits
        puts "#{transaction.date} || #{'%.2f' % transaction.amount} || || #{'%.2f' % transaction.balance}"
      elsif key == :withdrawls
        puts "#{transaction.date} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}"
      else
        puts ""
      end
    end
  end

  def build_log_header
    puts "date || credit || debit || balance"
  end

end
