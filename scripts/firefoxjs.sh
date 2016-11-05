#!/system/bin/sh

cd /data/data/org.mozilla.fennec_fdroid/files/mozilla || exit 1
cd "$(sed -n -e 's/^.*Path=//p' profiles.ini)" || exit 1
wget https://raw.githubusercontent.com/pyllyukko/user.js/master/user.js
chmod 700 user.js
ouser=$(stat -c "%U" prefs.js)
chown "$ouser":"$ouser" user.js

# android version is need this https://github.com/pyllyukko/user.js/pull/136#issuecomment-206812337
sed -i '/layers.acceleration.disabled/d' user.js
