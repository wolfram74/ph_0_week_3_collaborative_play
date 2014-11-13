# interested course of events
# 1. figure out how to print to files. √
# 2. figure out how to make a checkerboard of divs in css. √
# 3. out put a
#
#
#
#
#
#
#

#c0-0 {
# background: #ff0000;
# width:50px;
# /*display*/: inline;
# height: 50px;
# position:absolute;
# top:00px;
# left:00px;}

# begin
#   file = File.open("./test.css", mode = "w")
#   10.times {|i| file.write("#{i}th line, dawg\n")}
# end
# File.write("./test.css", "test 2")
def make_heat_map()
  table = {}
  # n = 0
  100.times {|n|
    norm = n.to_f/100
    r, g, b = (1-norm)*255, (norm)*(1-norm)*4*255, norm*255
    # print n, r, g, b, "\n"
    table[n]=[r.to_i, g.to_i, b.to_i]}
    # n+=1
  # end
  table[100]=[0,0,0]
  return table
end

def style_string (xi, yi, len, color)
  id= "#c#{xi}-#{yi}{"
  size = "width:#{len}px; height:#{len}px;"
  # r, g, b = color[0].to_s(16), color[1].to_s(16), color[2].to_s(16)
  color = "background:#%02x%02x%02x;" % color
  location = "position:absolute;top:#{len*yi}px;left:#{len*xi}px;}"

  return id+size+color+location
end

html_head = "<!DOCTYPE html>
<html>
<head>
  <link type=\"text/css\" rel=\"stylesheet\" href=\"test.css\"/>
</head>
<body>"

html_close ="</body>
</html>"

begin
  file = File.open("./test.html", mode = "w")
  file.write(html_head)
  256.times {|x|
    256.times {
      |y| file.write("<div id=\"c#{x}-#{y}\"> </div>")}
      file.write( "\n")}
  file.write(html_close)
end
size = 2
heat_map = make_heat_map
# heat_map[0],heat_map[1],heat_map[2] = [255,0,0],[0,255,0],[0,0,255]

# puts style_string(1,2,256,[255,0,0])
begin
  file=File.open("./test.css", mode = "w")
  256.times {|x|
  256.times {
    |y| file.write(style_string(x,y, size, heat_map[(x+y)%101] ))}
    file.write( "\n")}

end