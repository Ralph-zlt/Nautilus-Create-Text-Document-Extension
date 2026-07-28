#!/bin/bash

########################################
# Nautilus Create Text Document Extension
########################################

echo "Installing Nautilus Create Text Document Extension..."

# Create the Nautilus Python extensions directory if it doesn't exist
mkdir -p ~/.local/share/nautilus-python/extensions

# Create the Python extension
cat > ~/.local/share/nautilus-python/extensions/criar_texto.py << 'EOF'
import os
import subprocess
from gi.repository import Nautilus, GObject


class CriarTextoExtension(GObject.Object, Nautilus.MenuProvider):
    def __init__(self):
        super().__init__()

    def get_background_items(self, *args):
        current_folder = args[-1]

        item = Nautilus.MenuItem(
            name="NautilusExtension::CriarTexto",
            label="New Text Document...",
            tip="Create a new text document in this folder"
        )

        item.connect("activate", self.menu_activate_cb, current_folder)
        return [item]

    def menu_activate_cb(self, menu, current_folder):
        gfile = current_folder.get_location()
        path = gfile.get_path()

        result = subprocess.run(
            [
                "zenity",
                "--entry",
                "--title=Create Text Document",
                "--text=Enter the file name:",
                "--entry-text=Text.txt"
            ],
            capture_output=True,
            text=True
        )

        if result.returncode == 0:
            filename = result.stdout.strip()

            if filename:
                filepath = os.path.join(path, filename)

                try:
                    with open(filepath, "w"):
                        pass
                except Exception:
                    pass
EOF

echo
echo "Extension installed successfully!"

echo "Restarting Nautilus..."
nautilus -q >/dev/null 2>&1

echo
echo "Done!"
echo "Right-click on the background of any folder and select:"
echo "\"New Text Document...\""
