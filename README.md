*🇧🇷 [Leia este documento em Português](README.pt-BR.md)*

Nautilus Create Text Document Extension


A lightweight Nautilus extension that adds a "New Text Document..." option to the folder background context menu.

When selected, a Zenity dialog asks for the desired file name and creates an empty text file in the current directory.

Features
Adds "New Text Document..." to Nautilus.
Uses Zenity for a simple graphical input dialog.
Creates empty text files in the current folder.
Quick installation with a single shell script.
Requirements
Nautilus
nautilus-python
zenity
Installation

Clone the repository:

git clone https://github.com/Ralph-zlt/Nautilus-Create-Text-Document-Extension.git
cd Nautilus-Create-Text-Document-Extension


Make the installer executable:

chmod +x nautilusdocext.sh


Run the installer:

./nautilusdocext.sh


The installer automatically restarts Nautilus.

Usage
Open any folder in Nautilus.
Right-click on an empty area inside the folder.
Select "New Text Document...".
Enter the desired file name.
Click OK.

An empty file will be created in the current directory.

How It Works

The installer creates a Python extension in:

~/.local/share/nautilus-python/extensions/


The extension integrates with Nautilus through nautilus-python and uses Zenity to display a graphical dialog for entering the new file name.

License

This project is licensed under the MIT License.
