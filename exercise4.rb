class Paperboy

  attr_reader :earnings

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
    @min_quota = 50
  end

  # def quota
  #   @min_quota += 0.5*@experience
  # end

  def deliver (start_address, end_address)
    if (end_address.to_f - start_address.to_f) > @min_quota
      @earnings = (((end_address.to_f - start_address.to_f) - @min_quota)*0.50) + (@min_quota*0.25)
    elsif (end_address.to_f - start_address.to_f) == @min_quota
      @earnings = (end_address.to_f - start_address.to_f)*0.25
    else
      @earnings = (end_address.to_f - start_address.to_f)*0.25-2.00
    end
    @experience += end_address.to_f - start_address.to_f
    @min_quota += 0.5*@experience
    return @earnings
  end

  def papers_delivered (start_address, end_address)
    @paper_delivered = end_address - start_address
  end

  def report

    p "#{@name} delivered #{@experience} and earned $#{@earnings} today!"

  end

end
