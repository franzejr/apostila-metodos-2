### Makefile para o diretorio raiz

NOME=apostila

CAPITULO_CABECALHO=capitulos/capitulo

CAPITULOS=\
	$(CAPITULO_CABECALHO)1/capitulo1.tex \
	$(CAPITULO_CABECALHO)2/capitulo2.tex \
	$(CAPITULO_CABECALHO)3/capitulo3.tex \
	$(CAPITULO_CABECALHO)4/capitulo4.tex \
	$(CAPITULO_CABECALHO)5/capitulo5.tex \
	$(CAPITULO_CABECALHO)6/capitulo6.tex \
	$(CAPITULO_CABECALHO)7/capitulo7.tex

SECOES=\
	$(CAPITULO_CABECALHO)1/secao1.tex \
	$(CAPITULO_CABECALHO)1/secao2.tex \
	$(CAPITULO_CABECALHO)1/secao3.tex \
	$(CAPITULO_CABECALHO)1/secao4.tex \
	$(CAPITULO_CABECALHO)1/secao5.tex \
	$(CAPITULO_CABECALHO)1/secao6.tex \
	$(CAPITULO_CABECALHO)1/secao7.tex \
	$(CAPITULO_CABECALHO)2/secao1.tex \
	$(CAPITULO_CABECALHO)2/secao2.tex \
	$(CAPITULO_CABECALHO)2/secao3.tex \
	$(CAPITULO_CABECALHO)2/secao4.tex \
	$(CAPITULO_CABECALHO)2/secao5.tex \
	$(CAPITULO_CABECALHO)2/secao6.tex \
	$(CAPITULO_CABECALHO)2/secao7.tex \
	$(CAPITULO_CABECALHO)2/secao8.tex \
	$(CAPITULO_CABECALHO)2/secao9.tex \
	$(CAPITULO_CABECALHO)2/secao10.tex \
	$(CAPITULO_CABECALHO)3/secao1.tex \
	$(CAPITULO_CABECALHO)3/secao2.tex \
	$(CAPITULO_CABECALHO)3/secao3.tex \
	$(CAPITULO_CABECALHO)3/secao4.tex \
	$(CAPITULO_CABECALHO)4/secao1.tex \
	$(CAPITULO_CABECALHO)4/secao2.tex \
	$(CAPITULO_CABECALHO)4/secao3.tex \
	$(CAPITULO_CABECALHO)4/secao4.tex \
	$(CAPITULO_CABECALHO)4/secao5.tex \
	$(CAPITULO_CABECALHO)4/secao6.tex \
	$(CAPITULO_CABECALHO)4/secao7.tex \
	$(CAPITULO_CABECALHO)4/secao8.tex \
	$(CAPITULO_CABECALHO)5/secao1.tex \
	$(CAPITULO_CABECALHO)5/secao2.tex \
	$(CAPITULO_CABECALHO)5/secao3.tex \
	$(CAPITULO_CABECALHO)5/secao4.tex \
	$(CAPITULO_CABECALHO)5/secao5.tex \
	$(CAPITULO_CABECALHO)6/secao1.tex \
	$(CAPITULO_CABECALHO)6/secao2.tex \
	$(CAPITULO_CABECALHO)6/secao3.tex \
	$(CAPITULO_CABECALHO)6/secao4.tex \
	$(CAPITULO_CABECALHO)6/secao5.tex \
	$(CAPITULO_CABECALHO)6/secao6.tex \
	$(CAPITULO_CABECALHO)7/secao1.tex \
	$(CAPITULO_CABECALHO)7/secao2.tex
	
PACOTES=\
	pacotes/algorithm.sty \
	pacotes/algorithmic.sty \
	pacotes/ambientes.sty \
	pacotes/comandos.sty

FIGURAS=\
	capitulos/capitulo1/figuras/bissecao1.png \
	capitulos/capitulo1/figuras/bissecao2.png \
	capitulos/capitulo1/figuras/bissecao3.png \
	capitulos/capitulo1/figuras/bissecao4.png \
	capitulos/capitulo1/figuras/newton1.png \
	capitulos/capitulo1/figuras/newton2.png \
	capitulos/capitulo1/figuras/posicaofalsa1.png \
	capitulos/capitulo1/figuras/posicaofalsa2.png \
	capitulos/capitulo1/figuras/posicaofalsamodificado1.png \
	capitulos/capitulo1/figuras/secante1.png \
	capitulos/capitulo1/figuras/substituicoes1.png \
	capitulos/capitulo1/figuras/substituicoes2.png \
	capitulos/capitulo1/figuras/substituicoes3.png \
	capitulos/capitulo1/figuras/substituicoes4.png \
	capitulos/capitulo2/figuras/intro1.png \
	capitulos/capitulo2/figuras/intro2.png \
	capitulos/capitulo2/figuras/regra_trapezio1.png

all:		$(NOME).pdf \
#		$(NOME).ps

$(NOME).pdf:	$(NOME).tex $(CAPITULOS) $(SECOES) $(PACOTES) $(FIGURAS)
		pdflatex $(NOME)
		makeindex $(NOME)
#		bibtex $(NOME)
		pdflatex $(NOME)
		pdflatex $(NOME)

#apostila.ps:    apostila.pdf
#		pdf2ps $(NOME).pdf

clean:
	rm -f *.log *.aux *.toc *.lo[fpt] *.blg *.bbl \
	*.ind *.ilg *.idx *.glo *.gls *.out

distclean: clean
	rm -f *.dvi *.ps *.pdf

backupclean:
	find ./ -name "*~" -or -name "*.backup" | xargs rm -rf

help:
	@echo " \n \
	Este Makefile aceita os seguintes alvos abaixo:\n \
	      \n \
	      all: chama o alvo apostila.pdf \n \
	      apostila.pdf: compila a apostila gerando o PDF da mesma. \n \
	      clean: limpa arquivos temporários deixando os arquivos finais como PDFs. \n \
	      distclean: limpa todos os arquivos temporários, inclusive os PDFs. \n \
	      backupclean: limpa arquivos temporários terminados em ~ ou .backup (para usuários do Kile) \n \
	      "

### Makefile termina aqui.

