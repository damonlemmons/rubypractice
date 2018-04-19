require 'rspec'
require_relative 'car'
require_relative 'classtesla'

describe "Tesla" do
 modelx = Tesla.new(2015)
  it "has to be real" do

    expect{Tesla.new(2015)}.to_not raise_error
  end

  it "honk" do
    expect(modelx.horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
end
