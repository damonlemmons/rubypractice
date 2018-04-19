
require 'rspec'
require_relative 'car'
require_relative 'classtoyota'

describe "Toyota" do
   prius = Toyota.new(2010)

  it "has to be real" do
    expect{Toyota.new(2010)}.to_not raise_error
  end

  it "honk" do
    expect(prius.horn).to eq "whoop"
  end

end
