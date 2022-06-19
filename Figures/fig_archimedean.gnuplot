set terminal png size 400,300
set size 1,1
set output "fig_archimedean.png"
set xrange [0:2]
set yrange [0:1]
set object 1 rect from 0,0 to 0.5,exp(-0.5) fc rgb "grey"
set object 2 rect from 0.5,0 to 1,exp(-1) fc rgb "grey"
set object 3 rect from 1,0 to 1.5,exp(-1.5) fc rgb "grey"
set object 4 rect from 1.5,0 to 3,exp(-2) fc rgb "grey"
plot exp(-x)
