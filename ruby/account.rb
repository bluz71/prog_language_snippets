class Account
  attr_accessor :balance

  def initialize(amount=0)
    @balance = amount
  end

  def +(amount)
    @balance += amount
  end

  def -(amount)
    @balance -= amount
  end

  def to_s
    @balance.to_s
  end

  def balancing_act()
    puts "Balancing act: #{balance}."
  end

end

account = Account.new
p account
