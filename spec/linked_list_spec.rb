require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it "Makes List" do

    require 'pry'; binding.pry
    
    list = LinkedList.new("beep")

    # expect(list).to be_an_instance_of(LinkedList)
    # expect(list.head).to eq(nil)
  end

  it "It Appends" do
    list = LinkedList.new("boop")

    list.append("doop")
  end
end