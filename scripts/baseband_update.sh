mkdir tmp
cd $_
wget -O radio_module_6_beta.rar http://www120.zippyshare.com/d/ncwOGJga/85643/Radio%20Module%206.0%20Beta.rar
unrar x radio_module_6_beta.rar
rm radio_module_6_beta.rar
peth=$(realpath .)
/system/bin/su -c "mount -o remount,rw /system"
/system/bin/su -c "rm -f /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls"
/system/bin/su -c "mv -f $peth/* /system/vendor/firmware/telephony/"
/system/bin/su -c "chmod 644 /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls"
/system/bin/su -c "chmod 644 /system/vendor/firmware/telephony/hash"
/system/bin/su -c "chown -R root:root /system/vendor/firmware/telephony/{XMM_2230_REV20_*_V1.1_ASUS_SPI_FLASHLESS,XMM_7260_REV20_*_V4.0_ASUS7262_HSIC_FLASHLESS}.fls"
/system/bin/su -c "chown -R root:root /system/vendor/firmware/telephony/hash"
/system/bin/su -c "mount -o remount,ro /system"
cd ..
rm -r tmp
