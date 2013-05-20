#set term aqua font small_font
set terminal postscript enhanced color font small_font
set output '| ps2pdf - justcount-dlgroup.pdf'

# set margins to remove whitespace
set bmargin 0
set tmarg 0
set lmargin 4
set rmargin 1

#set title "Decrease of execution time during warmup runs"
set ylabel "Activity" textcolor rgb text_color font small_font
set xlabel "Ontology" textcolor rgb text_color font small_font

set key inside top center horizontal noreverse enhanced autotitles nobox

set key spacing 2

set ytics nomirror font small_font

set xtics nomirror font small_font 
set xtics ("AL" 1, "HRS" 39, "IC" 62, "NOQ" 87)
#set format x ''

set grid

set datafile separator ","
#set datafile missing "NaN"
		

f(x) = mean_y
fit f(x) "justcount-dlgroup.csv" using 3:6 via mean_y

plot "justcount-dlgroup.csv" using 6 ls 3 title "Activity", f(x) ls 1

