all: 2020-IEEEComSocVTS-Talks/utm.pdf

2020-IEEEComSocVTS-Talks/utm.pdf: 2020-IEEEComSocVTS-Talks/utm.tex
	export TEXINPUTS="..:" && \
	  cd 2020-IEEEComSocVTS-Talks && \
	  pdflatex utm.tex && \
	  bibtex utm && \
      pdflatex utm.tex && \
	  pdflatex utm.tex
