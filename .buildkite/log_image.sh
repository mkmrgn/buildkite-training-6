#!/bin/bash

function inline_link {
  LINK=$(printf "url='%s'" "$1")

  if [ $# -gt 1 ]; then
    LINK=$(printf "$LINK;content='%s'" "$2")
  fi

  printf '\033]1339;%s\a\n' "$LINK"
}

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'https://static.wikia.nocookie.net/unanything/images/f/f6/Happycat.jpeg/revision/latest?cb=20151017195823' 'catte'
inline_link 'https://www.buildkite.com' 'Buildkite'
