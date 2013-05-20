#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - justperent-vs-size.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4.5

set ylabel "Average number of justifications per entailment" textcolor rgb text_color font small_font
set xlabel "Ontology size" textcolor rgb text_color font small_font

#set logscale y

#set xrange [0.1:]
#set yrange [0.5:8000]

set key inside top right vertical noreverse autotitles nobox height 1
set key spacing 2

set ytics nomirror font small_font
set xtics nomirror font tiny_font
set xtics right rotate by 45
set xtics ("51" 1, "106" 5, "217" 10,"30" 15,"41" 20,"53" 25,\
"67" 30, "91" 35,"109" 40,"155" 45,"188" 50,"500+" 55)



set datafile separator ","
#set datafile missing "NaN"

set style data histogram
set style fill solid noborder

set xtics format ""

plot "justperent-vs-size.csv" using 2 title "Average number of justifications per entailment"

