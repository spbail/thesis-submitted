
set size ratio 0.6
set terminal postscript enhanced color font large_font
set output 'iso-comparison.tmp.eps'

#set xlabel "Ontology" textcolor rgb text_color font small_font
unset xlabel
set ylabel "Reduction" textcolor rgb text_color font small_font

#unset key

set key bmargin center horizontal noreverse autotitles nobox
set key font small_font

set style data histogram
set style histogram cluster gap 2
set style fill solid noborder

set ytics font small_font
set xtics font small_font
set xtic rotate by 45 scale 0 font ",12"  right
set format y "%g %%"

set style line 3 lt rgb "#009933" lw 4 pt 1 ps 1
set style line 1 lt rgb "#0060ad" lw 4 pt 6 ps 1
set style line 2 lt rgb "#ff0000" lw 4 pt 2 ps 1

set bmargin at screen 0.15


set datafile separator ","
plot "iso-comparison.csv" using ($3*100):xtic(2) title "strict",\
	"" using ($4*100) title "subex",\
	"" using ($5*100) title "lemma"