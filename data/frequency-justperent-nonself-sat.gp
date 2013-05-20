#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - frequency-justperent-nonself-sat.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4.5
set rmargin 1

set ylabel "Frequency" textcolor rgb text_color font small_font
set xlabel "Number of justifications per entailment" textcolor rgb text_color font small_font

set logscale y

set xrange [0.1:]
set yrange [0.5:8000]

set key inside top right vertical noreverse autotitles nobox height 1
set key spacing 2

set ytics nomirror font small_font
set xtics nomirror font small_font
set xtics ("1" 1, "10" 10, "20" 20,"30" 30,"41" 40,"53" 50,\
"67" 60, "91" 70,"109" 80,"155" 90,"188" 98,"500+" 107)


set nogrid

set datafile separator ","
#set datafile missing "NaN"

set style data histogram
set style fill solid noborder

#set arrow from 5.7,graph(0,0) to 5.7,graph(1,1) nohead

plot "frequency-justperent-nonself-sat.csv" using 2 title "Absolute frequency",\
	"" using 3 title "Ontology frequency"


