require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it "Makes List" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
    # expect(node.next_node).to eq(nil)
  end

  it "It Appends" do
    list = LinkedList.new
    list.append("doop")
    require 'pry'; binding.pry
    expect(list.append("doop")).to eq("doop")
    expect(list).to eq(nil)
  end
end