while line = STDIN.gets
  if /end/ =~ line
    break
  end
  puts line
end
