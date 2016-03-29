#
pre=HellasGrid-CA-CP-CPS
ascii_files= $(pre).tex \
	     chapter*.tex 
#
pdf: $(pre).pdf
$(pre).pdf: $(ascii_files)
	pdftex $(pre).tex
	pdftex $(pre).tex
#
clean:
	rm -f $(pre).pdf \
	  $(pre).aux chapter*.aux $(pre).log $(pre).out \
	  $(pre).toc
