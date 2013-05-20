#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - justcount-nontrivial.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4
set rmargin 1

#set title "Decrease of execution time during warmup runs"
set ylabel "Number of axioms" textcolor rgb text_color font small_font
set xlabel "Ontology (increasing in size)" textcolor rgb text_color font small_font

#set logscale y

#set xrange [0:100]
#set yrange [0.01:1500]

set key inside top center noreverse autotitles nobox

set key spacing 2

set ytics nomirror font small_font
set xtics nomirror 1 font small_font
set format x ''

set grid

set datafile separator ","
#set datafile missing "NaN"

plot "justcount-nontrivial.csv" using 7 w l ls 3 title "Axioms in justifications",\
	"" using 5 title "Entailments" w l ls 1


