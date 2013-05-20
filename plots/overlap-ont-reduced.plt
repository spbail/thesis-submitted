
#set size ratio 0.6
set terminal postscript enhanced color font small_font
set output 'overlap-ont-reduced.tmp.eps'

set xlabel "Overlap size (number of axioms)" textcolor rgb text_color font small_font
set ylabel "Overlap arity (number of justifications)" textcolor rgb text_color font small_font

set key inside top right vertical noreverse autotitles nobox height 1
set key spacing 2


set ytics font small_font
set xtics font small_font

#set log y
set yrange [0:32]
set datafile separator ","


plot "overlap-reduced.csv" using 1:2:(0.1 * $4) with points lt 1 pt 6 ps variable title "Number of ontologies"