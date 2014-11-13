begin
  file = File.open("./test.css", mode = "w")
  10.times {|i| file.write("#{i}th line, dawg\n")}
end

# File.write("./test.css", "test 2")
