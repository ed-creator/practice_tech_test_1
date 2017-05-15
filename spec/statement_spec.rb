require 'statement'

describe Statement do
  let(:deposit1) {double(:deposit, date: '1/1/2010', amount: 10, balance: 10)}
  let(:withdrawl1) {double(:withdrawl, date: '2/2/2012', amount: 1, balance: 9)}

  subject(:statement) {described_class.new(({:deposits => deposit1, :withdrawls => withdrawl1}))}

  describe 'can access transaction_log' do
    it 'shows a deposit' do
    expect{statement.display_log}.to output("date || credit || debit || balance\n1/1/2010 || 10.00 || || 10.00\n2/2/2012 || || 1.00 || 9.00\n").to_stdout
    end
  end

end
