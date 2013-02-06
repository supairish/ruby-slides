require_relative 'temperature_convert.rb'

describe Converter do
  it "should return the correct value" do
    Converter.stub(:gets).and_return('100 C')
    Converter.convert_temp.should include('212.0 degrees F')
  end
end