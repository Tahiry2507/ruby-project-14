require_relative '../Project-11/ruby-project-11'
require 'minitest/autorun'

class TestAccount < MiniTest::Unit::TestCase
  def test_default_balance
    assert_equal(0, Account.new.balance)
  end

  def test_deposit_withdraw_transfer
    a = Account.new
    b = Account.new
    a.account_holder = "Steve"
    b.account_holder = "Tahiry"
    a.deposit(100)
    assert_equal(100, a.balance)
    assert_equal(200, a.deposit(100))
    assert_equal(150, a.withdraw(50))
    assert_equal(140, a.transfer(10, b))
  end
end

# time spent = 6 hours
