source_filename = IPythonNotebookTutorial.ipynb

all: help

help:
	@echo "Commands: ipython|ipython-home|watch|serve"

slides:
	ipython nbconvert --to slides ${source_filename}

ipython:
	ipython notebook --port 8889

serve:
	serveit 'make slides'

ipython-home:
	(cd $(HOME)/work && ipython notebook --port 8888 --no-browser)
