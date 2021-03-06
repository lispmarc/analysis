set terminal png size 400,300
set size 1,1
set output "fig_lebesgue.png"
set xrange [0:3.14]
set yrange [0:1]
#set object 1 rect from 0,0 to 0.5,exp(-0.5) fc rgb "grey"
set object 1 rect from asin(0.2),0 to pi-asin(0.2),0.2 fc rgb "grey"
set object 2 rect from asin(0.4),0.2 to pi-asin(0.4),0.4 fc rgb "grey"
set object 3 rect from asin(0.6),0.4 to pi-asin(0.6),0.6 fc rgb "grey"
set object 4 rect from asin(0.8),0.6 to pi-asin(0.8),0.8 fc rgb "grey"
plot sin(x) title "f(x)"
set out