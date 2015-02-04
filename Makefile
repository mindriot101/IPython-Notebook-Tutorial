source_filename = IPythonNotebookTutorial.ipynb

all: help

help:
	@echo "Commands: ipython|watch|slides|serve"

watch:
	fswatch ${source_filename} | while read fname; do make slides; done

slides:
	ipython nbconvert --to slides ${source_filename}

serve:
	python -m SimpleHTTPServer
