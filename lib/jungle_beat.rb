class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end
  
  def append(string)
    strings = string.split" "
    strings.each do |str|
      list.append(str)
    end
  end
end