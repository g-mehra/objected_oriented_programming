class BankAccount

  attr_accessor: balance
  attr_accessor: interest_rate

  def initialize (balance, interest_rate)

  @balance = balance
  @interest_rate = interest_rate

  end

  def deposit (amount)
    @balance += amount
  end

  def withdraw (amount)
    @balance -= amount
  end

  def gain_interest
    @balance = @balance*(1+(interest_rate/100)
  end

end
