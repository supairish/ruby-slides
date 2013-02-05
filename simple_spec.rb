describe 'The simple string', 'A string' do
  before do
    @str = 'A string'
  end

  it "should be 8 characters long" do
    expect(@str.length).to eq(8)
  end

  it "should not be empty" do
    expect(@str).to_not be_empty
  end

end