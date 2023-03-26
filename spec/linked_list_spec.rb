require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it "exist" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "Has a head" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it "Can append" do
    list = LinkedList.new   
     require 'pry'; binding.pry
    list.append("doop")
   require 'pry'; binding.pry
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  xit "Can count" do
    list = LinkedList.new
    list.append("doop")
    list.append("zap")

    # list.append("crap")
    expect(list.count).to eq(3)
  end

  xit "Can make string" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_sting).to eq("doop")
  end
end