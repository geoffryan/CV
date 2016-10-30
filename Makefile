ALL = CV.pdf CV_onepage_140412.pdf

default: $(ALL)

CV.pdf: CV.tex
	pdflatex CV.tex

CV_onepage_140412.pdf: CV_onepage_140412.tex
	pdflatex CV_onepage_140412.tex

clean:
	rm -f *.aux *.log *.gz *.out
	rm -f $(ALL)
