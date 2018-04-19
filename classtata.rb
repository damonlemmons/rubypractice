require_relative 'car'


class Tata < Car
  def initialize(year)
    super
    @horn = "beep"
  end
end
