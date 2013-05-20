#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - unsat-justcount-frequency.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4
set rmargin 1

set ylabel "Frequency" textcolor rgb text_color font small_font
set xlabel "Number of justifications per entailment" textcolor rgb text_color font small_font

set logscale y

set xrange [0.1:]
set yrange [0.5:300]

set key inside top left vertical noreverse autotitles nobox height 1
set key spacing 2

set ytics nomirror font small_font
set xtics nomirror font small_font

set nogrid

set datafile separator ","
#set datafile missing "NaN"

set style data histogram
set style fill solid noborder

plot "unsat-frequency-result.csv" using 2:xtic(1) title "Absolute frequency",\
	"" using 3 title "Ontology frequency"


