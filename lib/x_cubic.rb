require_relative 'cubic'

begin
  print "Please enter numeric:"
  cubic = Cubic.new(gets)
  puts "Cubic result: #{cubic.calculation}"
rescue
  retry
end
