# interested course of events
# 1. figure out how to print to files.
# 2. figure out how to make a checkerboard of divs in css.
# 3. out put a
#
#
#
#
#
#
#


begin
  file = File.open("./test.css", mode = "w")
  10.times {|i| file.write("#{i}th line, dawg\n")}
end

# File.write("./test.css", "test 2")
