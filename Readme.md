# Jupyter Git Scripts

A collection of batch scripts helping with version controlled Jupyter
notebooks on Windows.
A JupyterLab extension for GIT allows to commit changes on a notebook
directly from JupyterLab, no command-line interaction necessary.
Associates double-click on `.ipynb` files with JupyterLab.

The scripts are intended to be run by restricted users
typically found in corporate computing environments.

## Features

### `New Jupyter Project.bat`

1. Presents a dialog asking the user for an empty project folder,
   allows a new folder to be created.
2. Initializes GIT in that project folder, using user name and email provided
   by Windows via Active Directory.
3. Sets up GIT with Jupyter notebook filtering (nbstripout) in that folder.
4. Adds a copy of the notebook template *New Project Notebook.ipynb* from *config* folder.
5. Adds configured GIT submodules as well.

- Expects a config file *config\local.conf* relative to the script location
  with the following content:

```
NewProjectOrigin=https://<your GIT server>/%USERNAME%
NewProjectSubMods=https://<your GIT server>/<some subdir>/commontools.git
```

### `Anaconda Update Script.bat`

- Updates the Anaconda Python distribution
  and creates a log file of the process next to the scripts location.
- Registers the Jupyter notebook file extension `.ipynb` so that a double-click
  starts JupyterLab and opens the notebook.
- Installs Jupyter extensions for interactive widgets (ipywidgets) in JupyterLab
  and installs nodeJS which is required for that.
- Installs GIT extension `jupyterlab_git` for JupyterLab.
- Does not require admin rights.
  (Assumes Anaconda is installed in the users home folder.)

### `Pull All Projects.bat`

Recursively updates the current GIT repository and all submodules within from
remote (server possibly) and checks out the latest master.

### `Push All Projects.bat`

Recursively sends the recent commits of the current GIT repository and all
submodules within to the remote (server possibly).

## Requirements

- [Git for Windows](https://git-scm.com/download/win)
- **optional**: [TortoiseGit](https://tortoisegit.org/download/)
  (requires admin rights during install)
- [Anaconda Python](https://www.anaconda.com/distribution/),
  expected in default location for users (`%LOCALAPPDATA%`)

## Terms of use

Please see the included *LICENSE* file.
Use at your own risk!

## Contact

I am very much looking forward to your feedback!
Feel free to use the issue tracker for requests or bug reports.
