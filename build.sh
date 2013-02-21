#! /usr/bin/env bash

{
  echo '<!doctype html>'
  echo '<html><head>'
  echo '<link rel=stylesheet href=./style.css>'
  echo '<script src=http://rumoursdb.com/examples/css-colab/css-colab.js></script>'
  echo '<script>CssColab("semver-ftw")</script>'

  echo '<style>'
#  cat ./style.css
  echo '</style>' 
  echo '</head><body><div id=markdown>'
  marked README.md
  echo '</div id=markdown></body></html>'
} > index.html
