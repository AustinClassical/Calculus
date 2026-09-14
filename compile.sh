#!/bin/bash

if [ "$1" != "" ] && [ -f "${1}".tex ]; then

  pdflatex -jobname ${1} "\documentclass[11pt, addpoints, tikz]{exam}\input ${1}"
  pdflatex -jobname ${1} "\documentclass[11pt, addpoints, tikz]{exam}\input ${1}"

  pdflatex -jobname ${1}-solutions "\documentclass[11pt, addpoints, tikz]{exam}\printanswers\input ${1}"
  pdflatex -jobname ${1}-solutions "\documentclass[11pt, addpoints, tikz]{exam}\printanswers\input ${1}"

  rm ${1}.aux
  rm ${1}-solutions.aux
  rm ${1}-solutions.log
  rm ${1}.log

else
  echo "Syntax is:"
  echo "  create-exam name (where name.tex is the file to compile)"
fi
