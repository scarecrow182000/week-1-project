# week1project.rb
#Eric D. Epperson

class Band
  attr_accessor :name, :time

  def initialize(name, time)
    @name = name
    @time = time
  end
end

class Concert
  attr_accessor :first_act, :second_act, :headliner
end

band1 = Band.new "AXE MURDERER", "20"
band2 = Band.new "SOUL BLACK", "25"
band3 = Band.new "POLLO LOCO", "23"
band4 = Band.new "DEAD CLOWNS", "22"
band5 = Band.new "THORNY ROSE", "21"

@bands = [band1,band2,band3,band4,band5]

def first_band
  puts "These bands are available for your opening acts:"
  puts @bands.map(&:name).join("\n")
  puts "What band do you want for the first Opening Act?"
  @answer1 = gets.chomp.strip.upcase
  found_band1 = @bands.find do |band|
    band.name == @answer1
  end

  if found_band1
    return found_band1
  else
    puts "Please enter a valid band name."
    first_band
  end
end

def second_band
  puts "What band do you want for the second Opening Act?"
  @answer2 = gets.chomp.strip.upcase
  if @answer2 == @answer1 then puts "You have already chosen that band. Please choose another band." && second_band
  end
  found_band2 = @bands.find do |band|
    band.name == @answer2
  end

  if found_band2
    return found_band2
  else
    puts "Please enter a valid band name."
    second_band
  end
end

def headliner_information
  puts "What is the name of the Headliner?"
  @headliner = gets.chomp.upcase
  puts "How long will " + @headliner + " play in minutes?"
  @duration = gets.chomp.to_s
  return Band.new @headliner, @duration
end

@concert = Concert.new
@concert.first_act = first_band
@concert.second_act = second_band
@concert.headliner = headliner_information

puts "-----------"
puts "Please push PLAY"
gets
puts "-----------"
puts "Your Concert is:"
puts "The first opening act " + @concert.first_act.name + " will play " + @concert.first_act.time + " minutes."
puts "The second opening act " + @concert.second_act.name + " will play " + @concert.second_act.time + " minutes."
puts "The headliner " + @concert.headliner.name + " will play " + @concert.headliner.time + " minutes."
puts "Enjoy the music!"
