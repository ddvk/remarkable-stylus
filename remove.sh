set -e

rm /usr/lib/plugins/generic/libqevdevlamyplugin.so || true

cat << EOF > /lib/systemd/system/xochitl.service 
[Unit]
Description=reMarkable main application
StartLimitIntervalSec=600
StartLimitBurst=4
OnFailure=remarkable-fail.service
After=home.mount

[Service]
ExecStart=/usr/bin/xochitl --system
Restart=on-failure
WatchdogSec=60

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl restart xochitl
