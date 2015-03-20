source_filename = IPythonNotebookTutorial.ipynb

all: help

help:
	@echo "Commands: ipython|ipython-home|slides|serve"

ipython:
	ipython notebook --port 8889

serve:
	ipython nbconvert --to slides --post serve ${source_filename}

ipython-home:
	(cd $(HOME)/work && ipython notebook --port 8888 --no-browser)
