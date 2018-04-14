set log xy

# Tick formatting
set format xy "10^{%L}"

set xl "Rank : r"
set yl "P(r)"

set xtics out
set ytics out

# Set range of x-axis
set xr[1:2.5e5]

rgb(r,g,b) = 65536*int(r) + 256 * int(g) + int(b)

pl 'schloss.txt' u 1:2:(rgb($3,$4,$5)) w imp lt rgb variable notitle,\
   'schloss.txt' u 1:2:(rgb($3,$4,$5)) pt 7 lt rgb variable notitle

