# QT plugin for lamy pen

Generates a key press when the pen button is pressed

# Usage

Copy `libqevdevlamyplugin.so` to `/usr/lib/plugins/generic`

or `export QT_QPA_GENERIC_PLUGINS=evdevlamy`
Start `xochitl -plugin evdevlamy` 


## Compilation
source /usr/local/oecore/env etc
qmake
make
