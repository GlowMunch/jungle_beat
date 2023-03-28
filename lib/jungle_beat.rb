class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end
  
  # def defined_list(words)
  #   @def_list << words.split(" ")
  # end

  def append(string)
    strings = string.split(" ")
    strings.each do |str|
      # @def_list.include? (str)
      list.append(str)
    end
  end

  def prepend(string)
    strings = string.split(" ")
    strings.each do |str|
      list.prepend(str)
    end
  end

  def count
    list.count
  end

  def play
    string = list.to_string
    `say -r 500 -v Boing #{string}`
  end

  def all
    list.to_string
  end

end