class Color
  attr_accessor :color

  def initialize(color)
    case color
    when :blue
      @color = "blue"
    when :red
      @color = "red"
    when :purple
      @color = "purple"
    when :green
      @color = "green"
    else
      raise "Unknow color."
    end
  end

end


begin
  color = Color.new(:yellow)
  puts color.color
rescue
  puts "Exception, unknown color."
end
