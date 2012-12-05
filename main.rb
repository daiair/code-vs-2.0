#CODE VS 2.0
#Test code

require "logger"

log = Logger.new "#{File.dirname(File.expand_path __FILE__)}/log.txt"
log.level = Logger::INFO

params = STDIN.gets.split(" ") 
log.info "W: #{params[0]}, H: #{params[1]}, T: #{params[2]}, S: #{params[3]}, N: #{params[4]}"

blocks = Array.new([[]])
i,j = 0,0
while line = STDIN.gets
  if /END/ =~ line
    log.info blocks[i].to_s
    i += 1
    break if i == params[4].to_i
    blocks[i] = []
    j = 0
    next
  end
  blocks[i][j] = line.split(" ") 
  j += 1
end

puts "0 0"

while true
  puts "1 0"
end
