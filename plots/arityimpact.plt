
set size ratio 0.6
set terminal postscript enhanced color font small_font
set output 'arityimpact.tmp.eps'

set xlabel "Axiom frequency (number of justifications)" textcolor rgb text_color font small_font
set ylabel "Average axiom impact (number of entailments)" textcolor rgb text_color font small_font

set key inside bottom right vertical noreverse autotitles nobox height 1
set key spacing 2

set ytics font small_font
set xtics font small_font

set log y
set xrange [0:200]
set datafile separator ","

f(x) = m*x+c
fit f(x) 'arityimpact-subtotals.csv' using 1:2 via m, c

plot "arityimpact-subtotals.csv" using 1:2 ls 1 title "Axiom", f(x) ls 1 title "y=0.12x+4"