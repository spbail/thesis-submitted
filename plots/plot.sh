rm $1.tmp.eps
rm $1.eps
rm $1.pdf
gnuplot $1.plt
echo "gnuplot done."
eps2eps $1.tmp.eps $1.eps
echo "eps2eps done."
eps2pdf -r -90 $1.eps
rm $1.tmp.eps
rm $1.eps
echo "done."