#!/bin/bash

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'https://static.wikia.nocookie.net/unanything/images/f/f6/Happycat.jpeg/revision/latest?cb=20151017195823' 'catte'
