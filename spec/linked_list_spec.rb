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
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it "Can count" do
    list = LinkedList.new
    list.append("doop")
    list.append("zap")
    expect(list.count).to eq(2)

  end

  it "Can make string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it "Can prepend" do
    list = LinkedList.new
    list.append("plop")
    expect(list.head.data).to eq("plop")
    list.to_string
    expect(list.to_string).to eq("plop")
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it "Can prepend with an empty array" do
    list = LinkedList.new
    list.prepend("plop")
    expect(list.to_string).to eq("plop")
  end

end