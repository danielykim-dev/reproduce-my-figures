# log-log plot
set log xy

# Tick formatting
set format xy "10^{%L}"

# Set axis label
set xl "Rank : r"
set yl "P(r)"

# Change tick shape
set xtics out
set ytics out

# Set range of x-axis
set xr[1:2.5e5]

# Custom function for coloring
rgb(r,g,b) = 65536*int(r) + 256 * int(g) + int(b)

# $3, $4, $5 indicate 3rd, 4th, 5th columns in the tsv file
pl 'schloss.tsv' u 1:2:(rgb($3,$4,$5)) w imp lt rgb variable notitle,\
   'schloss.tsv' u 1:2:(rgb($3,$4,$5)) pt 7 lt rgb variable notitle


