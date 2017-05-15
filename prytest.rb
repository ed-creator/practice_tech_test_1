require './lib/deposit'
require './lib/statement'
require './lib/transaction_log'
require './lib/user_account'
require './lib/withdrawl'

Ed = User.new
Ed.make_deposit(1)
Ed.make_deposit(2)
Ed.make_deposit(3)
Ed.make_deposit(4)
Ed.make_withdrawl(1)
Ed.make_withdrawl(2)
Ed.make_withdrawl(3)
Ed.make_deposit(5)
Ed.make_withdrawl(4)
