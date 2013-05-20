
#set size ratio 0.6
set terminal postscript enhanced color font large_font
set output 'iso-template-freq.tmp.eps'

set xlabel "Template ID (ordered by frequency)" textcolor rgb text_color font large_font
set ylabel "Frequency" textcolor rgb text_color font large_font

set key inside top right vertical noreverse autotitles nobox height 1 font medium_font
set key spacing 2

set ytics font medium_font
set xtics font medium_font

set log y
set xrange [0:8000]
set yrange [0.9:4000]
set datafile separator ","
set datafile missing 'NaN'

set xtics 2000

plot "iso-template-freq.csv" using 2:3:(log($4*$4)+1.2) every 100 with points lt 1 pt 6 ps variable title "Number of justifications"
