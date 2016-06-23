# С 0.13 версии syncthing не запустится без флага -t в docker run
docker run -dt \
       --name syncthing \
       --restart always \
       --user "1000":"1500" \
       -p 8384:8384 -p 22000:22000 -p 21025:21025/udp \
       -v "$HOME/cdata/syncthing:/home/user/syncthing" \
       -v "$HOME/mdata/syncthing:/home/user/Sync" \
       rpi2-syncthing syncthing -no-browser -home="/home/user/syncthing" &&
docker run -dt --name dnscrypt --restart always -p 53:53 rpi2-dnscrypt-proxy &&

# https://github.com/derand/rpi_i2pd
docker run -dt -p 7070:7070 -p 4446:4446 -p 7650:7650 -v $HOME/mdata/busybox-armv7l:/bin/busybox --name i2pd i2pd &&
docker run -dt --name baikal -p 80:80 -p 443:443 -v $HOME/cdata/baikal:/var/www/Specific ckulka/rpi-baikal
