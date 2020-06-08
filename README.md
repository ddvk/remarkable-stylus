# QT plugin for lamy pen

Generates a key press when the pen button is pressed

# Usage

Copy `libqevdevlamyplugin.so` to `/usr/lib/plugins/generic`

`export QT_QPA_GENERIC_PLUGINS=evdevlamy`  
or `xochitl -plugin evdevlamy` 


## Compilation
  source /usr/local/oecore-x86_64/environment-setup-cortexa9hf-neon-oe-linux-gnueabi  
  qmake  
  make  
