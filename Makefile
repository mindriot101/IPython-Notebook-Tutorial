source_filename = IPythonNotebookTutorial.ipynb

all: help

help:
	@echo "Commands: ipython|ipython-home|watch|slides|serve"

watch:
	fswatch ${source_filename} | while read fname; do make slides; done

slides:
	ipython nbconvert --to slides ${source_filename}

ipython:
	ipython notebook --port 8889

serve:
	python -m SimpleHTTPServer

ipython-home:
	(cd $(HOME)/work && ipython notebook --port 8888 --no-browser)
