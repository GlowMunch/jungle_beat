class JungleBeat
  attr_accessor :list, :def_list, :rate, :voice
  
  def initialize (data = " ")
    @list = LinkedList.new
    @def_list = ["tee", "dee", "deep", "bop", "boop", "la", "na", "dop"]
    @data = append(data)
    @rate = 500
    @voice = "Boing"
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
    `say -r #{rate} -v #{voice} #{string}`
  end

  def all
    list.to_string
  end

  def rate=value
    @rate = value
  end

  def voice=value
    @voice = value
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

end