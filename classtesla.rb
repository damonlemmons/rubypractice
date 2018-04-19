require_relative 'car'


class Tesla < Car
  def initialize(year)
    super
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
end
end
