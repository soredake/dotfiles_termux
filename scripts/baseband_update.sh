#!/system/bin/sh

mkdir tmp
cd "$_" || exit 1
curl -O https://a.pomf.cat/mdnrvi.rar
unrar x mdnrvi.rar
rm mdnrvi.rar
peth=$(realpath .)
/system/bin/su -c "mount -o remount,rw /system
rm -f /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls
mv -f $peth/* /system/vendor/firmware/telephony/
chmod 644 /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls
chmod 644 /system/vendor/firmware/telephony/hash
chown -R root:root /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls
chown -R root:root /system/vendor/firmware/telephony/hash
mount -o remount,ro /system"
cd ..
rm -r tmp
