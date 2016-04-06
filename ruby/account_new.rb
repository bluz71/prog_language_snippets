require "./Account.rb"

class SubAccount < Account
  attr_accessor :holder

  def initialize(holder, amount=0)
    @holder = holder
    super(amount)
  end

  def fun_in_the_sun()
    puts "Fun in the sun with: #{holder}."
    balancing_act
  end

end

sub_account = SubAccount.new
sub_account.fun_in_the_sun
sub_account.balancing_act
