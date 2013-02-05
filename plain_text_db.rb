require 'yaml'

hash     = {one: 1, two: 2}
y_hash   = hash.to_yaml

new_hash = YAML.load y_hash
puts new_hash == hash

class ContactList
  attr_accessor :contacts

  def initialize(file)
    @file = file
    @contacts = []
  end

  def save
    File.open(@file, 'w') do |fh|
      fh.puts(@contacts.to_yaml)
    end
  end

  def self.load(file)
    list = new(file)
    list.contacts = YAML.load(File.read(file))
    list
  end

  def <<(contact)
    @contacts << contact
  end

  def delete(name)
    @contacts.delete_if { |c| c.name == name }
  end

  def empty?
    @contacts.empty?
  end

  def size
    @contacts.size
  end

  def [](name)
    @contacts.find{|c| c.name == name }
  end
end

class Contact
  attr_reader :name, :email, :home, :work, :extras
  attr_writer :name, :email

  def initialize(name)
    @name = name
    @home = {}
    @work = {}
    @extras = {}
  end
end