

class Car
attr_accessor :horn, :year, :lights

  def initialize(year)
  @wheels = 4
  @horn = "BEEP"
  @year = year
  @lights = "off"
  end

  def wheels
    @wheels
  end

def lights_on
  @lights = "on"
end

  # def year
  #   @year
  # end

# because we added an accessor, don't need this part..
  # def horn
  # p @horn
  # end

end







# smart = Car.new(2018)
# prius = Toyota.new(2017)
# zest = Tata.new(2016)
# modelx = Tesla.new(2015)
#
# p smart.lights_on
# p smart
# p prius
# p zest
# p modelx
