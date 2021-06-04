#!/bin/bash
pandoc --pdf-engine=wkhtmltopdf \
  README.md -o out.pdf \
  -V fontsize=16pt \
  -V 'mainfont:JetBrains Mono' \
  -V 'monofont:JetBrains Mono' \
  -V 'linkcolor:#3b82f6' \
  -V 'monobackgroundcolor:#F3F4F6' \
  -V 'papersize:a4' \
