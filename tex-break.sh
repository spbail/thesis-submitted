"/usr/texbin/pdflatex" -shell-escape $1.tex
"/usr/texbin/bibtex" $1.aux 
"/usr/texbin/pdflatex" -shell-escape $1.tex
"/usr/texbin/pdflatex" -shell-escape $1.tex
#open $1.pdf
rm thesis.aux
rm thesis.lo*
rm thesis.b*
rm thesis.out
rm thesis.toc