
set size ratio 0.6
set terminal postscript enhanced color font small_font
set output 'avgjusts.tmp.eps'

set xlabel "Ontologies" textcolor rgb text_color font small_font
set ylabel "Justifications per entailment" textcolor rgb text_color font small_font

set key inside top right vertical noreverse autotitles nobox height 1 autotitles
set key spacing 2

set ytics font small_font
set xtics font small_font


set format x ''

set log y
set yrange [1:600]
set datafile separator ","


plot "avgjusts.csv" using 2:4:5:6 ls 1 title "" w yerrorbars