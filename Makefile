include /usr/local/share/luggage/luggage.make

TITLE=autoLogout
REVERSE_DOMAIN=org.da
PAYLOAD=\
		pack-Library-LaunchAgents-org.da.autoLogout.plist\
		pack-usr-local-bin-autoLogout.py\
		pack-script-postflight

PACKAGE_VERSION=1.4