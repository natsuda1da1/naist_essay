inkscape -D -z --file=lattice.svg --export-pdf=lattice.pdf --export-latex
inkscape -D -z --file=detector.svg --export-pdf=detector.pdf --export-latex
inkscape -D -z --file=lattice.svg --export-eps=lattice_svg-tex.eps
inkscape -D -z --file=detector.svg --export-eps=detector_svg-tex.eps
platex --shell-escape naist_essay.tex 
mendex naist_essay.tex
pbibtex naist_essay.tex
platex --shell-escape naist_essay.tex 
dvipdfmx naist_essay.dvi
evince 'naist_essay.pdf'