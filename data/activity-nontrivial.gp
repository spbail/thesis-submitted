#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - activity-nontrivial.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4
set rmargin 1

#set title "Decrease of execution time during warmup runs"
set ylabel "Number of axioms" textcolor rgb text_color font small_font
set xlabel "Ontology (increasing in size)" textcolor rgb text_color font small_font

set key inside top center horizontal noreverse enhanced autotitles nobox

set key spacing 2

set ytics nomirror font small_font
set format y "%g%%"

set xtics nomirror 1 font small_font
set format x ''

set grid

set datafile separator ","
#set datafile missing "NaN"


plot "justcount-nontrivial.csv" using 8 ls 3 title "Activity"

