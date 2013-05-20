
set size ratio 0.6
set terminal postscript enhanced color font small_font
set output 'frequency.tmp.eps'

set xlabel "Number of justifications per entailment" textcolor rgb text_color font small_font
set ylabel "Frequency" textcolor rgb text_color font small_font

set key inside top right vertical noreverse autotitles nobox height 1
set key spacing 2

set ytics font small_font
set xtics font small_font

set log y
set xrange [0:100]
set yrange [1:10000]
set datafile separator ","

plot "frequency.csv" using 1:2 ls 1 title "Entailments", \
	"" using 1:3 ls 2 title "Ontologies"