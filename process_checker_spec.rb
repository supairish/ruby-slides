require_relative 'process_checker.rb'

describe ProcessChecker do
  before do
    @my_checker = ProcessChecker.new

    stubbed_output = <<-PS
      89788 ttys001    0:04.18 /Users/cirish/.rvm/rubies/ruby-1.8.7-p371/bin/ruby script/rails s
      89789 ttys002    0:00.05 login -pfl cirish /bin/bash -c exec -la bash /bin/bash
      89790 ttys002    0:00.17 -bash
    PS

    @my_checker.instance_variable_set(:@ps_output, stubbed_output)
  end

  it "should put ps output into @ps_output instance variable" do
    expect(@my_checker.instance_variables).to include(:@ps_output)
  end
end