#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:54502734:7ae0c00332c8a1a862c996db7b46f8ac96a58ecf; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49718602:b0886bb38233e280e348b2e64a9334d109f6b2d0 EMMC:/dev/block/bootdevice/by-name/recovery 7ae0c00332c8a1a862c996db7b46f8ac96a58ecf 54502734 b0886bb38233e280e348b2e64a9334d109f6b2d0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
