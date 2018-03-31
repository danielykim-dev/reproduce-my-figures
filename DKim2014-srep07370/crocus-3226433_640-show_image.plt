set lmargin 7
set view 130,330      # 3D angle
set ticslevel 0
set zrange[-255:255]

unset xtics
unset ytics
unset ztics
unset border

# range of r, g, b = [0, 255]
rgb(r,g,b) = 65536*int(r) + 256 * int(g) + int(b)

# $1 : x (int): pixel x-axis position
#      range = [0, image width]
# $2 : y (int): pixel y-axis position
#      range = [0, image height]
# $3 : r (int): pixel red channel level
#      range = [0, 255]
# $4 : g (int): pixel green channel level
#      range = [0, 255]
# $5 : b (int): pixel blue channel level
#      range = [0, 255]
# $6 : h (int): height of pixel ~ pixel grayscale level
#      range = [0, 255]
#
# spl ... 1st line => plot image
#     ... 2nd line => plot surface with heights
spl "crocus-3226433_640.txt" u 1:2:( ($6)*0-255 ):( rgb($3,$4,$5) ) w d lt rgb variable t "",\
    "crocus-3226433_640.txt" u 1:2:3:(rgb($3,$4,$5)) w impulses lt rgb variable notitle
