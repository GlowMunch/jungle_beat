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

  def count
    list.count
  end

  def play(speed)
    string = list.to_string
    `say -r #{speed} -v Boing #{string}`
  end
end