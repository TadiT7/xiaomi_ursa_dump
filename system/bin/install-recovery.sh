#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50849102:583242235d873a99ed59b376efd6b9c07be6c583; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:45954378:7078ec2fed1695d0b0de03e3d1b36a6f39fb8d34 EMMC:/dev/block/bootdevice/by-name/recovery 583242235d873a99ed59b376efd6b9c07be6c583 50849102 7078ec2fed1695d0b0de03e3d1b36a6f39fb8d34:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
