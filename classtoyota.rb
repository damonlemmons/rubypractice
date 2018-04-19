require_relative 'car'

class Toyota < Car
  def initialize(year)
    super
  @horn = "whoop"
  end
end
