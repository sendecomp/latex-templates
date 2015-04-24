# ****** ****** ****** ****** ****** ****** ****** ****** ******
# ... GNU Make for Bourne Shell ...
#
# Notes:
#   - the nomencl.ist file exists in the base texmf tree
#     and is accessed there by default.
#
# ****** ****** ****** ****** ****** ****** ****** ****** ******

SHELL = /bin/bash

# ... variable definitions ...

foo  = template

biblist = strings.bib lit.bib pubs.bib
bibhome = $(HOME)/texmf/tex/bibtex/bib
bib := $(addprefix $(bibhome)/,$(biblist))

# ... uncomment next line and edit for additional bib file ...

#bibs += $(HOME)/my.bib

# ... rules ...

.PHONY : clean help

$(foo).ps : $(foo).tex $(bibs)
	latex $(foo).tex
	makeindex $(foo).nlo -s nomencl.ist -o $(foo).nls
	bibtex $(foo)
	latex $(foo).tex
	latex $(foo).tex
	dvips $(foo).dvi
	ps2pdf $(foo).ps

nobib : $(foo).tex
	latex $(foo).tex
	makeindex $(foo).nlo -s nomencl.ist -o $(foo).nls
	latex $(foo).tex
	latex $(foo).tex
	dvips $(foo).dvi
	ps2pdf $(foo).ps
	touch nobib

noglo : $(foo).tex $(bibs)
	latex $(foo).tex
	bibtex $(foo)
	latex $(foo).tex
	latex $(foo).tex
	dvips $(foo).dvi
	ps2pdf $(foo).ps
	touch noglo

min : $(foo).tex
	latex $(foo).tex
	latex $(foo).tex
	latex $(foo).tex
	dvips $(foo).dvi
	ps2pdf $(foo).ps
	touch min

clean : 
	-rm -f $(foo).{aux,bbl,blg,dvi,fff,nlo,nls,ilg}
	-rm -f $(foo).{lof,log,lot,pdf,ps,toc,ttt}
	-rm -f nobib noglo min

help : 
	@echo "make       -> generate ps from tex"
	@echo "make nobib -> generate ps from tex (no bib)"
	@echo "make noglo -> generate ps from tex (no glo)"
	@echo "make min   -> generate ps from tex (no bib or glo)"
	@echo "make clean -> remove all auxiliary files"

# ... version control info ...

# $Id: Makefile.template,v 1.4 2012/07/24 21:04:12 khoman Exp $

# $Log: Makefile.template,v $
# Revision 1.4  2012/07/24 21:04:12  khoman
# Added *.toc to the list of files to be removed upon execution of the
# clean target.
#
# Revision 1.3  2011/10/25 19:07:50  khoman
# Added command for removing the non-default targets in the clean
# operation.
#
# Revision 1.2  2011/07/14 21:28:22  khoman
# Changed the shell to bash shell so that the brace expansion works
# correctly.
#
# Revision 1.1  2008/08/26 20:01:42  khoman
# Initial revision
#
# Revision 1.8  2004/06/17 19:31:13  khoman
# Corrected the echo commands in the help target.
#
# Revision 1.7  2003/09/22 20:18:03  khoman
# Corrected dependency specification on bib files.
#
# Revision 1.6  2003/09/22 20:16:09  khoman
# Added nobib, noglo and min targets.
#
# Revision 1.5  2003/07/08 21:27:24  khoman
# Changed bib dependency to add.bib.
#
# Revision 1.4  2002/06/26 07:46:51  khoman
# Modified help target and added a nopsfrag and a pdf target.
#
# Revision 1.3  2001/04/25 15:13:36  khoman
# Added a sed command to hide the phrase PSfrag Replacements which
# otherwise appears the pdf document.  This command was first developed
# during preparation of the jert01 manuscript.
#
# Revision 1.2  2000/12/15 16:07:54  khoman
# Modified pdf rule to use ps2pdf and touch file so that update
# mechanism works correctly.
#
# Revision 1.1  2000/10/04 19:46:26  khoman
# Initial revision
#

# ****** ****** ****** ****** ****** ****** ****** ****** ******





