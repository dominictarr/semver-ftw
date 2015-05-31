#! /usr/bin/env bash

{
  echo '<!doctype html>'
  echo '<html><head>'
  echo '<link rel=stylesheet href=./style.css>'
  echo '<a href="https://github.com/dominictarr/semver-ftw">'
  echo '<img style="position: absolute; top: 0; left: 0; border: 0;"'\
  'src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png"'\
  ' alt="Fork me on GitHub"></a>'

# css-colab for rapid designing.
# open in http://rumoursdb.com/example/css-colab/editor.html#semver-ftw
#  echo '<script src=http://rumoursdb.com/examples/css-colab/css-colab.js></script>'
#  echo '<script>CssColab("semver-ftw")</script>'

  echo '<style>'
#  cat ./style.css
  echo '</style>' 
  echo '</head><body><div id=markdown>'
  marked README.md
  echo '</div id=markdown></body></html>'
} > index.html
