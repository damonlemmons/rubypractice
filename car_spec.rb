require 'rspec'
require_relative 'car'

describe "Car" do

    my_car = Car.new(2018)

  it "has to be real" do
    expect{Car.new(2018)}.to_not raise_error
  end

it "has a model year" do
  expect(my_car.year).to be_a Numeric
end

  it "has wheels" do
    expect(my_car.wheels).to be 4
  end

  it "honk" do
    expect(my_car.horn).to eq "BEEP"
  end

  it "has lights that are off" do
    expect(my_car.lights).to eq "off"
end

# it "can turn lights on" do
#   expect(my_car.lights).to eq "off"
# end

end
