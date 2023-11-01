set -e

wget "https://github.com/ddvk/remarkable-stylus/releases/download/0.0.3/libqevdevlamyplugin.so" -O /usr/lib/plugins/generic/libqevdevlamyplugin.so

cat << EOF > /lib/systemd/system/xochitl.service 
[Unit]
Description=reMarkable main application
StartLimitIntervalSec=600
StartLimitBurst=4
OnFailure=remarkable-fail.service
After=home.mount

[Service]
Environment="QT_QPA_GENERIC_PLUGINS=evdevlamy"
ExecStart=/usr/bin/xochitl --system -plugin evdevlamy
Restart=on-failure
WatchdogSec=60

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl restart xochitl
