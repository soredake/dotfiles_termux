#!/system/bin/sh

# needed because of https://github.com/pyllyukko/user.js/pull/136#issuecomment-206812337
cd /data/data/org.mozilla.fennec_fdroid/files/mozilla
# https://github.com/graysky2/profile-sync-daemon/blob/master/common/browsers/firefox
profile=$(grep '[P,p]'ath= profiles.ini | sed 's/[P,p]ath=//')
cd $profile
curl -o user.js https://raw.githubusercontent.com/pyllyukko/user.js/master/user.js
chmod 700 user.js
chown -R u0_a217:u0_a217 user.js
# https://stackoverflow.com/questions/5410757/delete-lines-in-a-text-file-that-containing-a-specific-string
awk '!/layers.acceleration.disabled/' user.js > temp && mv temp user.js
awk '!/layers.acceleration.disabled/' prefs.js > temp && mv temp prefs.js
