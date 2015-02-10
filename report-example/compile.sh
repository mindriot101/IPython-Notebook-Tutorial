#!/usr/bin/env bash

set -e

echo ipython nbconvert Example.ipynb 2>/dev/null
ipython nbconvert Example.ipynb 2>/dev/null
echo ipython nbconvert Example.ipynb --to latex --post pdf 2>/dev/null
ipython nbconvert Example.ipynb --to latex --post pdf 2>/dev/null
echo ipython nbconvert Example.ipynb --to latex --post pdf --template latex_nocode.tplx --output Example_nocode 2>/dev/null
ipython nbconvert Example.ipynb --to latex --post pdf --template latex_nocode.tplx --output Example_nocode 2>/dev/null
open Example.pdf Example_nocode.pdf
