#eps
#set terminal postscript eps enhanced monochrome 22
#png
set terminal pngcairo size 610,450 enhanced font 'Verdana,9'

#set title "Cambridge"
set xlabel "Entailment type"
set ylabel "Count"

set log y

set style data histogram
set style histogram cluster gap 1
set style fill solid noborder
set boxwidth 0.9

set output 'types.png'
set datafile separator ","

set style line 1 lt rgb "#000000" lw 4 pt 1 ps 1
set style line 2 lt rgb "#333333" lw 4 pt 6 ps 1
set style line 3 lt rgb "#666666" lw 4 pt 2 ps 1
set style line 4 lt rgb "#999999" lw 4 pt 9 ps 1
set style line 5 lt rgb "#CCCCCC" lw 4 pt 7 ps 1

plot "./types.csv" using 2:xtic(1) ls 4 notitle,\
     "" using 0:2:2 with labels center offset 0,1 notitle