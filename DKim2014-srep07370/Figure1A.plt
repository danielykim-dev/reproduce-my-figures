set tmargin 0
set lmargin 9
set rmargin 0
set bmargin 7

set log xy

# Tick formatting
set format xy "10^{%L}"

set xl "{/Arial-Bold=17 Rank :} {/Arial-Bold-Italic=17 r}"
set yl "P(r)" font "Arial Bold Italic,17"

set xtics out font "Arial,10"
set ytics out font "Arial,10"

# Set range of x-axis
set xr[1:2.5e5]

rgb(r,g,b) = 65536*int(r) + 256 * int(g) + int(b)

pl 'schloss.txt' u 1:2:(rgb($3,$4,$5)) w imp lt rgb variable notitle,\
   'schloss.txt' u 1:2:(rgb($3,$4,$5)) pt 7 lt rgb variable notitle

