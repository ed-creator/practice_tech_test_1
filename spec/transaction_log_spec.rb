require 'transaction_log'

describe Transaction_log do
  subject(:transaction_log) {described_class.new}
  let(:deposit) {double :deposit, date: "10/10/2016", amount: "10"}
  let(:withdrawl) {double :withdrawl, date: "09/10/2016", amount: "5"}

  describe '#add_deposit' do
    it 'success' do
    transaction_log.add_transaction(deposit)
    expect(transaction_log.history[:deposits]).to include deposit
    end
  end

  describe '#add_withdrawl' do
    it 'success' do
    transaction_log.add_withdrawl(withdrawl)
    expect(transaction_log.history[:withdrawls]).to include withdrawls
    end
  end
end
