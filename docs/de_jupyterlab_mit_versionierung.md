# JupyterLab mit Versionierung
## Voraussetzungen

- Git und TortoiseGit (GUI)
- Anaconda als Pythonumgebung

## Installieren von GIT
<style>
	img[alt=IconGitTGit] {
	  width: 100px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right; }
</style>

1. ![IconGitTGit](img/icon_git+tgit.png) **Option**  
  Es wird über ein unternehmensinternes *Softwareportal* bereitgestellt und kann darüber installiert werden. 
2. **Option**  
  Manuelles Herunterladen und Installieren von der [Projektwebseite](https://git-scm.com/download/win).
   - Zusätzlich kann die graphische Bedienoberfläche [TortoiseGit](https://tortoisegit.org/download/) installiert werden. Sie benötigt allerdings Administratorrechte zur Installation.

## Installieren der Pythonumgebung *Anaconda*

1. Download des Anaconda-Pakets für Windows, 64 bit, von der [Anaconda-Webseite](https://www.anaconda.com/products/individual#Downloads)
    - Falls der Virenscanner im Folgenden einige Installationsskipte (*.bat-Dateien) blockt, eine ältere Version von Anaconda installieren, z.B. von [Okt. 2019](https://repo.anaconda.com/archive/Anaconda2-2019.10-Windows-x86_64.exe), und anschließend aktualisieren, zum Beipiel über den *Anaconda-Navigator*.
2. Start des Setups durch Ausführen der Datei.
3. Zustimmen der Lizenzvereinbarung mit **I Agree**.
4. Installation nur für den aktuellen Benutzer **Just Me**.
5. Den vorgegebenen Ziel-Ordner für die Installation beibehalten und bestätigen **Next >**
6. Weitere Optionen auf den Vorgabewerten belassen und die Installation abschließen.

## Git-Unterstützung für JupyterLab einrichten

1. Repository mit [Helferskripten von GitHub](https://github.com/BAMresearch/jupyter-integration) herunterladen, [zum Beispiel mit *TortoiseGit*](#klonen-erstmaliges-herunterladen-eines-existierenden-projekts)
2. Die Datei **Anaconda Update Script.bat** doppelt anklicken und ausführen lassen. Sie erledigt mehrere Dinge und benötigt dafür keine Admin-Rechte:
    - Aktualisiert die Anaconda-Python-Distribution und erstellt eine Protokolldatei des Prozesses neben dem Speicherort der Skripte (*Rechnername.log*).
    - Registriert die Jupyter-Notebook-Dateierweiterung .ipynb, so dass ein Doppelklick auf solche Dateien JupyterLab startet und das Notebook öffnet.
    - Installiert Erweiterungen für interaktive Widgets (*ipywidgets*) in JupyterLab und installiert nodeJS, das dafür erforderlich ist.
    - Last but not least, installiert es die Erweiterung *jupyterlab_git*, die eine integrierte Benutzeroberfläche für Git dem JupyterLab hinzufügt.

## Links zu Lernmaterial

### Jupyter Lab/Notebook
- [Leicht verdauliche Videos zum Einstieg ins JupyterLab](https://www.youtube.com/watch?v=vUe2yGJF6Jw)
- weitere Videos gibt es [im Channel der Autorin](https://www.youtube.com/channel/UCL0O_guGSJ_fq0By7S9m2tQ)
- [Alternatives Einführungsvideo](https://www.youtube.com/watch?v=H9SDjNx-sV0)

### Python
- [Ein deutsches Skript fürs Programmieren mit Python](https://pythonbuch.com/einleitung.html)
- [Das (hier übersetzte) offizielle Python-Tutorial](https://py-tutorial-de.readthedocs.io/de/python-3.3/)
- [Eine Online-Plattform zum Testen](https://jupyter.org/try)  
  (Falls Anaconda nicht installiert ist oder nicht funktioniert)

### Markdown
- [Die Markdown Syntax übersichtlich dargestellt](https://cmsstash.de/website-praxis/markdown-fur-webseiten)
