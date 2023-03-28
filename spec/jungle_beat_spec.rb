require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  
  xit "Exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
  end

  xit "Can append a string as nodes and can count" do
    jb = JungleBeat.new
    jb.append("deep tee dee")
    expect(jb.list.head.data).to eq("deep")
    jb.append("na la boop")
    expect(jb.count).to eq(6)
  end

  xit "Can use defined list" do
    jb = JungleBeat.new
    jb.append("deep")
    jb.append("Mississippi")
    expect(jb.all).to eq("deep")
    jb.prepend("tee tee tee Mississippi")
    expect(jb.all).to eq("tee tee tee deep")
  end

  it "Can play and change voice and speed" do
    jb = JungleBeat.new
   
    jb.append("dop dop deep")
require 'pry'; binding.pry
    jb.rate = 100
    jb.play
    jb.rate = 50
    jb.append("la na dop")
    jb.play
    jb.voice = "Daniel"
    jb.play
    jb.reset_voice
    jb.play

  end

end
