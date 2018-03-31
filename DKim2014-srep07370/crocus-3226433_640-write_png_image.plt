set term png enhanced size 1024,768

set output "crocus-3226433_640-surface.png"

set lmargin 7

set xl "X-axis" font "Arial,20" offset 0,-1.5
set yl "Y-axis" font "Arial,20" offset 1,-2.0
set zl "Brightness" font "Arial,20" offset -3,1

set view 130,330
set ticslevel 0
set border 26

set xr [0:640]
set yr [0:390]
set zrange[-255:255]

set xtics nomirror
set ytics nomirror
set ztics nomirror

set xtics font "Arial,15" offset -0.3,-0.5 autofreq 100
set ytics font "Arial,15" offset -0.5,-0.5 autofreq 100
set ztics font "Arial,15" offset -0.5,0.1 0,255

rgb(r,g,b) = 65536*int(r) + 256 * int(g) + int(b)

spl "crocus-3226433_640.txt" u 1:2:(($6)*0-255):(rgb($3,$4,$5)) w d lt rgb variable t "",\
    "crocus-3226433_640.txt" u 1:2:3:(rgb($3,$4,$5)) w impulses lt rgb variable notitle

