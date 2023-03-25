require "rspec"
require "./lib/node"

RSpec.describe Node do
  
  it "Makes a Node" do

    node = Node.new("plop")



    expect(node).to an_instance_of(Node)
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end

