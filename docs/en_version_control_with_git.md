# Versioning with GIT

- A very good introduction [What is version control?](https://www.atlassian.com/git/tutorials/what-is-version-control) can be found at Atlassian who offer software and servers for Git as well but their services are not used here.
- [A complete book about Git](https://git-scm.com/book) is even available free of charge.

## General Terms, Glossary

- **Project**:  
  A folder with GIT version control, containing one or more Jupyter notebooks,
  Python source code files and supplementary files.
- **Clone**:  
  Downloading the project from the remote repository for the first time.
  The full history of changes will be copied as well.
- **Commit**:  
  The posting of marked (*staged*) changes including a short description, timestamp and username are added automatically. User name and email address can be stored centrally or individually for each repository.

## Using TortoiseGit

<style>
	img[alt=TortoiseGit_KontextMenu] {
	  width: 200px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right;
	}
</style>
![TortoiseGit_KontextMenu][3]

> TortoiseGit is a graphical [Git][1] revision control client for Windows. 
(See also [Wikipedia][2])

Since [Git][1] is a file-level version control program, [TortoiseGit][2] adds additional context menu options for files and directories under Windows

TortoiseGit can be used independently of Jupyter(Lab) for any git repository on Windows. It integrates itself into the explorer context menu and performs file-level operations, much like the corresponding Git command line commands.

[1]: https://en.wikipedia.org/wiki/Git
[2]: https://en.wikipedia.org/wiki/TortoiseGit
[3]: img/tgit_context_menu.png "TortoiseGit Context Menu"

### Instructions and Introductions

Online already exist numerous (video-)instructions and support, therefore we only refer to them here:
- [Video tutorial about the basic use of TortoiseGit](https://www.youtube.com/watch?v=_ZTPLrhLu-I)

### *Clone* - First download of an existing project

<style>
	img[alt=GithubCloneMenu] {
	  width: 400px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right; }
	img[alt=WinContextClone] {
	  width: 200px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right; }
	img[alt=TGitDialogClone] {
	  width: 400px; margin: 1em 1em 1em 1em;
	  border: none; background: none;
	   }
	img[alt=TGitSuccessClone] {
	  width: 350px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right; }
	ol li p { padding-bottom: 1em; }
	.section { clear: both; }
</style>
![GithubCloneMenu][20]

1. Visit the website with the git repository, e.g. [a project on github.com][21]. There click on the **Code** button which opens the menu with the address that can be used to *clone* the project (see screenshot). By clicking the ![clipboard][22] icon next to the address, the address is copied to the clipboard.
2. ![WinContextClone][23] Use Windows Explorer to navigate to the row folder and right click to open the context menu and select the *Git Clone...* option.
3. Enter the HTTPS address of the project in the **URL** field. It should already be entered if the address has already been copied to the clipboard (previous point 2). ![TGitDialogClone][24] 
4. ![TGitSuccessClone][25] After confirming the dialog with **OK**, the project is downloaded and at the end a text window with status information and the message **Success** in blue font appears. The window can now be closed with the **Close** button.

[20]: img/github_clone_menu.png "Github Clone Menu"
[21]: https://github.com/BAMresearch/jupyter-integration
[22]: img/clipboard.png "clipboard icon"
[23]: img/context_menu_clone.png "context menu for clone"
[24]: img/tgit_clone_dialog.png "TortoiseGit dialog clone"
[25]: img/tgit_success_clone.png "TortoiseGit clone successful"

### *Add* - add files, track their changes

1. **Right click on the file** -> **TortoiseGit** -> select **Add…**. After that a window with a short overview of the selected files appears, which should be confirmed with **OK**. Finally a small window appears which confirms the successful adding.
2. The file is now marked with a blue plus symbol, i.e. it is marked for the next **Commit** but not yet uploaded to the server (in the so-called **Staging** area).

1. **Rechts-Klick auf die Datei** -> **TortoiseGit** -> **Add…** auswählen. Darauf folgend erscheint ein Fenster mit einer kurzen Übersicht der ausgewählten Dateien, die mit **OK** bestätigt wird. Abschließend erscheint ein kleines Fenster, welches das erfolgreiche Hinzufügen bestätigt.
2. Die Datei ist nun mit einem blauen Plus-Symbol markiert, d.h. sie ist für den nächsten **Commit** vorgemerkt aber noch nicht auf den Server geladen (im sog. **Staging**-Bereich).

### *Commit* - Post changes

1. Open the context menu of the versioned folder (right-click) and select **Git Commit -> "master"…**.
2. The first time you run it, an error occurs because the username and email address are not yet set, but both are required for each commit. Confirm here and enter and save your own name and email address.
3. In the following step, a window appears with a summary of the changes to be posted in the lower area and a text field for the description of these changes in the upper area. Please enter a short and meaningful description of the changes you made.
4. The file is now marked with a green checkmark, i.e. it is booked in the history, but still not uploaded to the server or synchronized.

### *Push* - Update the server (first time to new project)

1. Select in the context menu of the folder: **TortoiseGit**->**Push…**
2. Leave the default settings in the following dialog and check **Set upstream/track remote branch** to set the current **master** branch as default for all further actions.
3. Confirm with **OK**.

### Synchronize with the server (every other time)

1. Select **Git Sync...** in the context menu of the folder.
2. First load possible changes from the server using **Pull**.
3. If this was successful, upload your changes to the server using **Push**.
