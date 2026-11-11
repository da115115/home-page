#

TARG	= rep
TOP 	  = report
TOPTITLE  = "Comment faire son propre GSM"

L2H 	  = latex2html -show_section_numbers -split +3 -toc_depth 1
LaTeX	  = latex
DVIPS	  = dvips
COMP	  = gzip
EXTCOMP	  = gz

LTOP	  = $(L2H) -info "" -t $(TOPTITLE) $(TOP).tex

$(TARG):	$(TOP).ps $(TOP)/$(TOP).html


$(TOP).dvi:	$(TOP).tex $(TOP).aux
	$(LaTeX) $(TOP).tex

$(TOP).aux:	$(TOP).tex
	$(LaTeX) $(TOP).tex

$(TOP).ps:	$(TOP).dvi
	$(DVIPS) -o $@ $(TOP)

$(TOP)/$(TOP).html :	$(TOP).tex $(TOP).aux
	$(LTOP)
	$(COMP) $(TOP).ps
	chmod 711 $(TOP)
	chmod 644 $(TOP)/*
	chmod 644 $(TOP).ps.$(EXTCOMP)

clean:	
	rm -rf $(TOP) $(TOP).dvi $(TOP).aux $(TOP).log $(TOP).toc \
	    $(TOP).lof $(TOP).ps *~



