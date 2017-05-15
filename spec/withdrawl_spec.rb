require 'Withdrawl'

describe Withdrawl do
  subject(:withdrawl) {described_class.new(10, 0)}

  describe '#initialize' do

    it "has today's date" do
      expect(withdrawl.date).to eq Time.now.strftime("%d/%m/%Y")
    end

    it "can enter a positive amount" do
      expect(withdrawl.amount).to eq 10
    end

    it "throws error when given a non positive amount" do
      expect{(Withdrawl.new(-1, 0))}.to raise_error "amount must be positive"
    end
  end
end
