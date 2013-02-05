require_relative 'plain_text_db.rb'

describe ContactList do
  before do
    @filename                    = 'contacts_db_store'
    @list                        = ContactList.new(@filename)
    @contact                     = Contact.new("Joe Smith")
    @contact.email               = 'user@example.com'
    @contact.home[:street]       = '123 Main St.'
    @contact.home[:city]         = 'Somewhere'
    @contact.work[:phone]        = "(123) 456-7890"
    @contact.extras[:instrument] = 'Cello'
    @list << @contact
  end

  it "return a contact with a name equal to the value we index into the contact list with" do
    joe = @list["Joe Smith"]
    expect(joe.name).to eq('Joe Smith')
  end

  it "should delete a contact from the list" do
    expect(@list).to_not be_empty
    @list.delete(@contact.name)
    expect(@list).to be_empty
  end

  it "should save and load correctly" do
    @list.save
    relist = ContactList.load(@filename)
    expect(relist.size).to eq(1)

    contact = relist["Joe Smith"]
    expect(contact.name).to eq("Joe Smith")
  end
end