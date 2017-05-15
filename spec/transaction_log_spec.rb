require 'transaction_log'

describe Transaction_log do
  subject(:transaction_log) {described_class.new}
  Deposit_mock = Class.new
  deposit = Deposit_mock.new
  class Deposit_mock
  def is_a?(klass)
    Deposit >= klass
    end
  end

  Withdrawl_mock = Class.new
  withdrawl = Withdrawl_mock.new
  class Withdrawl_mock
  def is_a?(klass)
    Withdrawl >= klass
    end
  end

  describe '#add_deposit' do
    it 'success' do

    transaction_log.add_transaction(deposit)
    expect(transaction_log.history[:deposits]).to include deposit
    end
  end

  describe '#add_withdrawl' do
    it 'success' do
    transaction_log.add_transaction(withdrawl)
    expect(transaction_log.history[:withdrawls]).to include withdrawl
    end
  end
end
