#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55276878:d40408164129d3293af9ce814f07742860457767; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50488650:c1ca2aa315bb567e612563bd78a2901f6bd7d059 EMMC:/dev/block/bootdevice/by-name/recovery d40408164129d3293af9ce814f07742860457767 55276878 c1ca2aa315bb567e612563bd78a2901f6bd7d059:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
