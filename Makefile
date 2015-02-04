all: slides

slides:
	ipython nbconvert --to slides IPythonNotebookTutorial.ipynb
