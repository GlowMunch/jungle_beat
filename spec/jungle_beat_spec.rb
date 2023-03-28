require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  
  it "Exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it "Can append a string as nodes and can count" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    jb.append("woo hoo shu")
    expect(jb.count).to eq(6)

  end

  it "Can use defined list" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.prepend("ahaa hbaa ha")
   require 'pry'; binding.pry
  end

end
