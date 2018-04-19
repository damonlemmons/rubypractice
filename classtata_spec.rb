require 'rspec'
require_relative 'car'
require_relative 'classtata'


describe "Tata" do
 zest = Tata.new(2005)

  it "has to be real" do
    expect{Tata.new(2005)}.to_not raise_error
  end

  it "honk" do
    expect(zest.horn).to eq "beep"
  end

end
