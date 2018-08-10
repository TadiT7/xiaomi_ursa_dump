#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50980174:9d6948fbcfbf787e4c8f850c2a7770b680c964a0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46081354:84d5e77bba333240dc82833395a1fe2d78665268 EMMC:/dev/block/bootdevice/by-name/recovery 9d6948fbcfbf787e4c8f850c2a7770b680c964a0 50980174 84d5e77bba333240dc82833395a1fe2d78665268:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
