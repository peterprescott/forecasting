FILENAME=$1

pweave --format=markdown \
	--output=../pandoc/$FILENAME.md \
	--figure-directory=../figures \
	../rmd/$FILENAME.Rmd

# pandoc -s ../pandoc/$FILENAME.md \
# 	-o ../publish/$FILENAME.pdf \
#   -f markdown \
#   -t pdf \
#   --filter pandoc-citeproc \
#   --bibliography ../bits/refs.bib \
#   --csl ../bits/style.csl \
#   --pdf-engine=latexmk \


pandoc -standalone \
  ../pandoc/$FILENAME.md \
  --mathjax \
  -o ../publish/$FILENAME.html \
  -f markdown \
  -t html \
  --template=../bits/template.html \
  --css pandoc.css \
  --filter pandoc-citeproc \
  --bibliography ../bits/refs.bib \
  --csl ../bits/style.csl \
  # --atx-headers \
  # --webtex=https://latex.codecogs.com/png.latex? \
  # --toc -V --template=template.markdown \

  
# google-chrome ../publish/$FILENAME.pdf
google-chrome ../publish/$FILENAME.html
