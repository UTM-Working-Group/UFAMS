all: papers tech-reports questionnaires VERSION.pdf

VERSION.pdf:
	git -c color.ui=always log --stat -n1 | aha | DISPLAY=:0 wkhtmltopdf - VERSION.pdf

papers: papers/risk-assessment.pdf papers/deconfliction.pdf papers/remote-id.pdf

tech-reports: tech-reports/risk-assessment.pdf tech-reports/deconfliction.pdf tech-reports/remote-id.pdf

questionnaires: questionnaires/remote-id.pdf

papers/risk-assessment.pdf: papers/risk-assessment.lyx Bibliography.bib
	lyx --export pdf2 papers/risk-assessment.lyx

papers/deconfliction.pdf: papers/deconfliction.lyx Bibliography.bib
	lyx --export pdf2 papers/deconfliction.lyx

papers/remote-id.pdf: papers/remote-id.lyx Bibliography.bib
	lyx --export pdf2 papers/remote-id.lyx

tech-reports/risk-assessment.pdf: tech-reports/risk-assessment.tex ua_wgs_base.cls Bibliography.bib
	export TEXINPUTS="..:" && \
	  cd tech-reports && \
	  pdflatex risk-assessment.tex && \
	  bibtex risk-assessment && \
		pdflatex risk-assessment.tex && \
		pdflatex risk-assessment.tex && \
	  pdflatex risk-assessment.tex

tech-reports/deconfliction.pdf: tech-reports/deconfliction.tex ua_wgs_base.cls Bibliography.bib
	export TEXINPUTS="..:" && \
	  cd tech-reports && \
	  pdflatex deconfliction.tex && \
	  bibtex deconfliction && \
      pdflatex deconfliction.tex && \
	  pdflatex deconfliction.tex

tech-reports/remote-id.pdf: tech-reports/remote-id.tex ua_wgs_base.cls Bibliography.bib
	export TEXINPUTS="..:" && \
	  cd tech-reports && \
	  pdflatex remote-id.tex && \
	  bibtex remote-id && \
      pdflatex remote-id.tex && \
	  pdflatex remote-id.tex

questionnaires/remote-id.pdf: questionnaires/remote-id.tex ua_wgs_questionnaire.cls 
	export TEXINPUTS="..:" && \
	  cd questionnaires && \
	  pdflatex remote-id.tex && \
	  pdflatex remote-id.tex

clean:
	rm -f *.pdf papers/*.pdf tech-reports/*.pdf questionnaires/*.pdf */*.aux */*.log */*.nlo */*.blg */*.bbl */*.out */*.toc
