# Eric Epperson

class ChristmasLights
  attr_accessor :color,:size,:blink,:strand,:price

    @color = "clear"
    @size = "medium"
    @blink = "No"
    @strand = 100
    @price = 0

end

class RedLight < ChristmasLights

  def initialize
    super
    @color = "Red"
    @size = "Small"
    @blink = "Yes"
    @strand = 200
    @price = 5
  end

  # def redlight
  #   {color: color, size: size, blink: blink, strand: strand, price: price}
  # end

end

redlight = redlight.new "Red","Small","Yes","200","5"

@redlight = [redlight]

def info(redlight)
  redlight.map do |redlight|
  redlight.info
  end
end

# print "Christmas Light color: #{info.redlight}"
puts "What would you like to find out?"
search_for = gets.chomp.strip.downcase

info = @redlight.select do |redlight|
  redlight.info[/#\w{search_for}/]
end

if true print "your answer is"
print info.join(",")
print "\n"

if false print "Sorry that is not a valid option, please try again"
