
#set size ratio 0.6
set terminal postscript enhanced color font large_font
set output 'overlap-count-all.tmp.eps'

set xlabel "Size (number of axioms)" textcolor rgb text_color font large_font
set ylabel "Frequency (number of justifications)" textcolor rgb text_color font large_font

set key inside top right vertical noreverse autotitles nobox height 1 font medium_font
set key spacing 2


set ytics font medium_font
set xtics font medium_font

#set log y
set yrange [0:32]
set xrange [0:30]
set datafile separator ","


plot "overlap-all.csv" using 1:2:(0.0015 * $3) with points lt 1 pt 6 ps variable title "Number of overlaps"