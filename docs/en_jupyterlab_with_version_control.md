# JupyterLab with Version Control
## Requirements

- Git and TortoiseGit (GUI)
- Anaconda providing the Python environment

## Installing GIT
<style>
	img[alt=IconGitTGit] {
	  width: 100px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right; }
</style>

1. ![IconGitTGit](img/icon_git+tgit.png) **Option**  
  A corporate internal *software portal* provides Git and TortoiseGit or a combined package of the two.
2. **Option**  
  Download and install Git from the [project website](https://git-scm.com/download/win) manually.
   - Additionally, the graphical user interface [TortoiseGit](https://tortoisegit.org/download/) can be installed. However, this requires administrator privileges.

## Installing the Python environment *Anaconda*

1. Download the Anaconda-Package for Windows, 64 bit, from the [Anaconda website](https://www.anaconda.com/products/individual#Downloads)
    - If the virus scanner blocks some installation scripts (*.bat files) in the following, install an older version of Anaconda, e.g. from [Oct. 2019](https://repo.anaconda.com/archive/Anaconda2-2019.10-Windows-x86_64.exe), and then update, for example via the *Anaconda Navigator*.
2. Start the setup by double-clicking the file.
3. Confirm the license agreement with mit **I Agree**.
4. Install for the current user only be selecting **Just Me**.
5. Keep the default destination folder for the installation and confirm with **Next >**
6. Leave other options at their default values and complete the installation.

## Setting up Git support for JupyterLab

1. Download a [repository of helper scripts from GitHub](https://github.com/BAMresearch/jupyter-integration), [for example with *TortoiseGit*](#clone-first-download-of-an-existing-project)
2. Double click on the file **Anaconda Update Script.bat** and let it run. It does several things and does not require admin rights:
    - It updates the Anaconda Python distribution and creates a log file of the process next to the location of the scripts (*ComputerName.log*).
    - It registers the Jupyter-Notebook file extension .ipynb, so that a double click on such files starts JupyterLab and opens the notebook.
    - It installs extensions for interactive widgets (*ipywidgets*) in JupyterLab and installs nodeJS, which is required for this.
    - Last but not least, it installs the extension *jupyterlab_git*, which adds an integrated user interface for Git to JupyterLab.

## Links to learning material

### Jupyter Lab/Notebook
- [Easily digestible videos for getting started in the JupyterLab](https://www.youtube.com/watch?v=7wfPqAyYADY)
- [And there are more!](https://www.youtube.com/results?search_query=jupyterlab)

### Python
- [There are several free(!) books introducing the Python programming language](https://pythonbooks.org/free-books/)
- [The official Python Tutorial](https://docs.python.org/3/tutorial/index.html)
- [A online platform for trying it out](https://jupyter.org/try)  
  (Just in case Anaconda is not installed or does not work.)

### Markdown
- [The Markdown Syntax explained concisely](https://commonmark.org/help/tutorial/index.html)
