#

TARG1	= rep
TARG2	= app
TOP1 	  = report      
TOP2 	  = appendix      
TOP1TITLE  = "Security & Electronic Commerce"
TOP2TITLE  = "Security & Electronic Commerce - Appendix"

L2H 	  = latex2html -show_section_numbers -split +3 -toc_depth 1
LaTeX	  = latex
DVIPS	  = dvips
COMP	  = gzip
EXTCOMP	  = gz

LTOP1	  = $(L2H) -info "" -t $(TOP1TITLE) $(TOP1).tex
LTOP2	  = $(L2H) -info "" -t $(TOP2TITLE) $(TOP2).tex

$(TARG1):	$(TOP1).ps $(TOP1)/$(TOP1).html

$(TARG2):	$(TOP2).ps $(TOP2)/$(TOP2).html

$(TOP1).dvi:	$(TOP1).tex $(TOP1).aux
	$(LaTeX) $(TOP1).tex

$(TOP2).dvi:	$(TOP2).tex $(TOP2).aux
	$(LaTeX) $(TOP2).tex

$(TOP1).aux:	$(TOP1).tex
	$(LaTeX) $(TOP1).tex

$(TOP2).aux:	$(TOP2).tex
	$(LaTeX) $(TOP2).tex

$(TOP1).ps:	$(TOP1).dvi
	$(DVIPS) -o $@ $(TOP1)

$(TOP2).ps:	$(TOP2).dvi
	$(DVIPS) -o $@ $(TOP2)

$(TOP1)/$(TOP1).html :	$(TOP1).tex $(TOP1).aux
	$(LTOP1)
	$(COMP) $(TOP1).ps
	chmod 711 $(TOP1)
	chmod 644 $(TOP1)/*
	chmod 644 $(TOP1).ps.$(EXTCOMP)

$(TOP2)/$(TOP2).html :	$(TOP2).tex $(TOP2).aux
	$(LTOP2)
	$(COMP) $(TOP2).ps
	chmod 711 $(TOP2)
	chmod 644 $(TOP2)/*
	chmod 644 $(TOP2).ps.$(EXTCOMP)

clean1:	
	rm -rf $(TOP1) $(TOP1).dvi $(TOP1).aux $(TOP1).log $(TOP1).toc \
	    $(TOP1).lof $(TOP1).ps *~

clean2:	
	rm -rf $(TOP2) $(TOP2).dvi $(TOP2).aux $(TOP2).log $(TOP2).toc \
	    $(TOP2).lof $(TOP2).ps *~

