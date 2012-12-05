#CODE VS 2.0
#Test code

params = STDIN.gets.split(" ") 
open("log.txt", "a") {|f|
  f.write Time.now.to_s + "\n"
  f.write "W: #{params[0]}, H: #{params[1]}, T: #{params[2]}, S: #{params[3]}, N: #{params[4]}\n"
}

blocks = []
blocks[0] = []
i = 0
j = 0
while line = STDIN.gets
  if /END/ =~ line
    open("log.txt","a") do |f|
      f.write blocks[i].to_s + "\n"
    end
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

