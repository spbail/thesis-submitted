
#eps
#set terminal postscript eps enhanced monochrome 22
#png
set terminal pngcairo size 610,450 enhanced font 'Verdana,9'

#set title "Cambridge"
set xlabel "Size"
set ylabel "Frequency"


set output 'frequency.png'
set log y
set xrange [0:80]
set datafile separator ","

set style line 1 lt rgb "#000000" lw 4 pt 1 ps 1
set style line 2 lt rgb "#333333" lw 4 pt 6 ps 1
set style line 3 lt rgb "#666666" lw 4 pt 2 ps 1
set style line 4 lt rgb "#999999" lw 4 pt 9 ps 1
set style line 5 lt rgb "#CCCCCC" lw 4 pt 7 ps 1

plot "./frequency.csv" using 1:2 ls 1 title "Ontologies", "" using 1:2  smooth bezier ls 1 notitle,\
	"" using 1:3 ls 2 title "Entailments", "" using 1:3 smooth  bezier ls 2 notitle