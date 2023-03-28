class JungleBeat
  attr_accessor :list, :def_list
  def initialize 
    @list = LinkedList.new
    @def_list = ["tee", "dee", "deep", "bop", "boop", "la", "na"]
  end

  def add_defined(adds)
    words = adds.split(" ")
    words.each do |word|
      @def_list << word
    end
  end

  def append(string)
    strings = string.split(" ")
    strings.each do |str|
      if @def_list.include?(str)
        list.append(str)
      end
    end
  end

  def prepend(string)
    strings = string.split(" ")
    strings.each do |str|
      if @def_list.include?(str)
         list.prepend(str)
      end
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