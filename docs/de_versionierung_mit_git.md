# Versionierung mit GIT

- Eine sehr gute Einführung [Was ist Versionskontrolle?](https://www.atlassian.com/de/git/tutorials/what-is-version-control) ist bei Atlassian zu finden, die auch Software und Server für Git anbieten, die aber hier nicht verwendet werden.
- [Ein komplettes Buch über Git](http://gitbu.ch/pr01.html) ist sogar frei verfügbar.

## Allgemeine Bezeichnungen, Glossar

- **Projekt**:  
  Ein Dateiordner unter GIT-Versionskontrolle, das ein oder mehrere Jupyter-Notebooks, Python-Quellcodedateien sowie die zugehörigen Daten enthalten kann.
- **Klonen**:  
  Das erstmalige Herunterladen eines Projekts vom Repository. Dabei wird auch die gesamte Änderungshistorie kopiert.
- **Commit**:  
  Das Verbuchen vorgemerkter Änderungen inklusive einer kurzen Beschreibung, Zeitstempel und Nutzername werden automatisch hinzugefügt. Nutzername und Emailadresse können zentral oder für jedes Repositorium individuell hinterlegt werden.

## Verwendung von TortoiseGit

<style>
	img[alt=TortoiseGit_KontextMenu] {
	  width: 200px; margin: 0 1em 1em 1em;
	  border: none; background: none;
	  float: right;
	}
</style>
![TortoiseGit_KontextMenu][3]

> TortoiseGit ist eine freie grafische Benutzeroberfläche für die Versionsverwaltungs-Software [Git][1] unter Windows. 
(Siehe auch [Wikipedia][2] hierzu)

Da [Git][1] als Versionsverwaltungsprogramm auf Dateiebene arbeitet, fügt [TortoiseGit][2] zusätzliche Kontextmenüoptionen für Dateien und Verzeichnisse unter Windows hinzu.

TortoiseGit kann unabhängig von Jupyter(Lab) für jedes Git-Repository unter Windows verwendet werden. Es integriert sich in das Kontextmenü des Explorers und führt Operationen auf Dateiebene durch, ganz ähnlich wie die entsprechenden Kommandozeilenbefehle von Git.

[1]: https://de.wikipedia.org/wiki/Git
[2]: https://de.wikipedia.org/wiki/TortoiseGit
[3]: img/tgit_context_menu.png "TortoiseGit Kontextmenü"

### Anleitungen und Einführungen

Online existieren schon zahlreiche (Video-)Anleitungen und Hilfestellungen, daher wird hier nur darauf verwiesen:
- [Videoanleitung über die grundlegende Verwendung von TortoiseGit](https://www.youtube.com/watch?v=oixZ1UetK_Y)

### *Klonen* - Erstmaliges Herunterladen eines existierenden Projekts

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

1. Die Webseite mit dem Git-Repository besuchen, z.B. [ein Projekt auf github.com][21]. Dort auf den Knopf **Code** klicken wodurch sich das Menü öffnet mit der Adresse, die zum sog. *Klonen* des Projekts genutzt werden kann (siehe Screenshot). Durch Anklicken des Symbols ![Zwischenablage][22] neben der Adresse, wird diese in die Zwischenablage kopiert.
2. ![WinContextClone][23] Mit dem Windows-Explorer in den Zeilordner navigieren und darin mit der rechten Maustaste das Kontextmenü öffnen und dort die Option **Git Clone...** auswählen.
3. Im Feld **URL** die HTTPS-Adresse des Projekts eintragen. Sie müsste schon eingetragen sein, wenn die Adresse zuvor schon in die Zwischenablage kopiert wurde (vorheriger Punkt 2). ![TGitDialogClone][24] 
4. ![TGitSuccessClone][25] Nach dem Bestätigen des Dialogs mit **OK**, wird das Projekt heruntergeladen und am Ende erscheint ein Textfenster mit Statusinfos und der Meldung **Success** in blauer Schrift. Mit der Schaltfläche **Close** kann das Fenster nun geschlossen werden.

[20]: img/github_clone_menu.png "Github Clone Menü"
[21]: https://github.com/BAMresearch/jupyter-integration
[22]: img/clipboard.png "Symbol für Zwischenablage"
[23]: img/context_menu_clone.png "Kontextmenü Klonen"
[24]: img/tgit_clone_dialog.png "TortoiseGit Menü Klonen"
[25]: img/tgit_success_clone.png "TortoiseGit Klonen erfolgreich"

### *Add* - Dateien hinzufügen, deren Änderungen verfolgen

1. **Rechts-Klick auf die Datei** -> **TortoiseGit** -> **Add…** auswählen. Darauf folgend erscheint ein Fenster mit einer kurzen Übersicht der ausgewählten Dateien, die mit **OK** bestätigt wird. Abschließend erscheint ein kleines Fenster, welches das erfolgreiche Hinzufügen bestätigt.
2. Die Datei ist nun mit einem blauen Plus-Symbol markiert, d.h. sie ist für den nächsten **Commit** vorgemerkt aber noch nicht auf den Server geladen (im sog. **Staging**-Bereich).

### *Commit* - Änderungen verbuchen

1. Am versionierten Ordner das Kontextmenü aufrufen (Rechts-Klick) und **Git Commit -> "master"…** auswählen.
2. Beim ersten Aufruf erscheint ein Fehler, da der Benutzername und die Email-Adresse noch nicht gesetzt sind, beides aber für jeden Commit erforderlich ist. Hier bestätigen und den eigenen Namen sowie die Emailadresse eintragen und abspeichern.
3. Im folgenden Schritt erscheint ein Fenster mit einer Zusammenfassung der zu verbuchenden Änderungen im unteren Bereich und einem Textfeld für die Beschreibung dieser Änderungen im oberen Bereich. Hier bitte eine möglichst kurze und aussagekräftige Beschreibung der durchgeführten Änderungen eintragen.
4. Die Datei ist nun mit einem grünen Häkchen markiert, d.h. sie ist verbucht in der Historie, aber noch nicht auf den Server geladen, bzw. synchronisiert.

### *Push* - Den Server aktualisieren (erstmalig zu neuem Projekt)

1. Im Kontextmenü des Ordners auswählen: **TortoiseGit**->**Push…**
2. Im folgenden Dialog die Voreinstellungen belassen und ein Haken setzten bei **Set upstream/track remote branch**, um den aktuellen Zweig **master** als Standard zu setzen für alle weiteren Aktionen.
3. Mit **OK** bestätigen

### Mit dem Server synchronisieren (jedes weitere Mal)

1. Im Kontextmenü des Ordners **Git Sync…** auswählen
2. Zunächst mögliche Änderungen vom Server laden mittels **Pull**.
3. Wenn das erfolgreich war, die eigenen Änderungen auf den Server laden mittels **Push**.
