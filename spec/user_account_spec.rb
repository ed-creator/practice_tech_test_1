require 'user_account'

describe User do
  subject(:user_account) {described_class.new}

  describe 'user balance' do
    it 'can view their own balance' do
      expect(user_account.check_balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'deposit increases user balance' do
      user_account.make_deposit(5)
      expect(user_account.check_balance).to eq 5
    end

    it 'fails when given a non positive number' do
      expect{user_account.make_deposit(-5)}.to raise_error "amount must be positive"
    end
  end

  describe '#withdrawl' do

    before do
      user_account.make_deposit(100)
    end

    it 'withdrawl decreases user balance' do
      user_account.make_withdrawl(5)
      expect(user_account.check_balance).to eq 95
    end

    it 'raise error if withdrawl is higher than balance' do
      expect{user_account.make_withdrawl(105)}.to raise_error "withdrawl is over balance"
    end
  end
end
