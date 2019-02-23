ALL = CV.pdf CV_onepage_140412.pdf PublicationList.pdf

default: $(ALL)

CV.pdf: CV.tex publications.tex
	pdflatex CV.tex

CV_onepage_140412.pdf: CV_onepage_140412.tex
	pdflatex CV_onepage_140412.tex

PublicationList.pdf: CV.tex publications.tex
	pdflatex PublicationList.tex

clean:
	rm -f *.aux *.log *.gz *.out
	rm -f $(ALL)
